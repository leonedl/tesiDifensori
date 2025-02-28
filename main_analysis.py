from data_processing import clean_data, normalize_data, fit_model, plot_regression_results, print_and_plot_outliers_with_details
from load_difensori import connect_to_database, load_data
from kpi_selection import select_top_kpi_by_p_value, fit_and_print_r2_with_custom_kpi, select_custom_kpi
from regression_analysis import print_and_plot_model_summary

# Funzione per analisi del modello
def analyze_model(dataframe, target, features, title):
    model = fit_model(dataframe, target, features)
    print_and_plot_model_summary(model, title, plot=True)
    plot_regression_results(dataframe, model, target, title)
    return model

# Connessione al database e caricamento dei dati
connection = connect_to_database(
    host="localhost",
    user="root",
    password="",
    database="difseriea"
)

if connection:
    # Caricamento e pulizia dei dati
    df_all = clean_data(load_data(connection))
    df_dc = clean_data(load_data(connection, ruolo='dc'))  # Difensori centrali
    df_t = clean_data(load_data(connection, ruolo='t'))    # Terzini

    #  Controllo della colonna 'minuti_giocati' PRIMA del filtro
    if 'minuti_giocati' in df_all.columns:
        print("\n Valori di 'minuti_giocati' prima del filtro:")
        print(df_all[['idgiocatore', 'nome', 'squadra', 'minuti_giocati']].head(20))

        print("\n Statistiche della colonna 'minuti_giocati':")
        print(df_all['minuti_giocati'].describe())

        print("\n Valori unici (primi 20):")
        print(df_all['minuti_giocati'].unique()[:20])
    else:
        print("\n ERRORE: La colonna 'minuti_giocati' non esiste nel dataset!")

    #  Filtraggio per minutaggio PRIMA della normalizzazione
    min_minutaggio = 1700  # Imposta la soglia minima di minuti giocati

    if 'minuti_giocati' not in df_all.columns:
        print("\n ERRORE: La colonna 'minuti_giocati' non esiste nel dataset!")
    else:
        # Applichiamo il filtro con i valori originali
        df_all_filtered = df_all[df_all['minuti_giocati'] >= min_minutaggio].copy()
        df_dc_filtered = df_dc[df_dc['minuti_giocati'] >= min_minutaggio].copy()
        df_t_filtered = df_t[df_t['minuti_giocati'] >= min_minutaggio].copy()

        # Verifica dopo il filtro
        if df_all_filtered.empty:
            print("\n Nessun giocatore supera il filtro per minutaggio!")
        else:
            print(f"\n🔹 Giocatori dopo il filtro per minutaggio (>= {min_minutaggio} min):")
            print(f"Totale: {df_all_filtered.shape[0]} | Difensori Centrali: {df_dc_filtered.shape[0]} | Terzini: {df_t_filtered.shape[0]}")

    #  Ora possiamo normalizzare i dati
    columns_to_normalize = df_all.columns.difference(['idgiocatore', 'nome', 'squadra', 'valoremercato', 'ruolo'])

    df_all = normalize_data(df_all, columns_to_normalize)
    df_dc = normalize_data(df_dc, columns_to_normalize)
    df_t = normalize_data(df_t, columns_to_normalize)

    df_all_filtered = normalize_data(df_all_filtered, columns_to_normalize)
    df_dc_filtered = normalize_data(df_dc_filtered, columns_to_normalize)
    df_t_filtered = normalize_data(df_t_filtered, columns_to_normalize)

    #  ANALISI GENERALE 
    print("\n ANALISI GENERALE (Tutti i giocatori)")
    model_all = analyze_model(df_all_filtered, 'valoremercato', columns_to_normalize, "Modello Generale - Difensori")
    model_dc = analyze_model(df_dc_filtered, 'valoremercato', columns_to_normalize, "Modello Difensori Centrali")
    model_t = analyze_model(df_t_filtered, 'valoremercato', columns_to_normalize, "Modello Terzini")



    #  ANALISI TOP 10 KPI 
    print("\n ANALISI TOP KPI")
    top_kpi_dc = select_top_kpi_by_p_value(model_dc, p_value_threshold=0.4, top_n=15)
    top_model_dc = analyze_model(df_dc_filtered, 'valoremercato', top_kpi_dc['KPI'].values, "Top KPI - Difensori Centrali")

    top_kpi_t = select_top_kpi_by_p_value(model_t, p_value_threshold=0.05, top_n=15)
    top_model_t = analyze_model(df_t_filtered, 'valoremercato', top_kpi_t['KPI'].values, "Top KPI - Terzini")
    


    # TERZA ANALISI: KPI SELEZIONATI MANUALMENTE
    print("KPI selezionati manualmente per Difensori Centrali")
    dc_kpi_selected = [
        'salvataggi',
        'rating',
        'dribbling_riusciti',
        'falli_commessi',
        'intercetti',
        'expected_goals',
        'gol'
        ]


    valid_dc_kpi = select_custom_kpi(df_dc_filtered, dc_kpi_selected)
    model_dc_custom = analyze_model(df_dc_filtered, 'valoremercato', valid_dc_kpi, "KPI selezionati manualmente - Difensori Centrali")

    print("KPI selezionati manualmente per Terzini")
    t_kpi_selected = [
    'eta',
    'precisione_passaggicorti',
    'percentuale_duelliaerei',
    'expected_goals',
    'dribbling_subiti',
    'cross_riusciti',
    'gialli',
    'altezza',
    'dribbling_riusciti',
    'rating',
    'tiri_totali'
]

    valid_t_kpi = select_custom_kpi(df_t_filtered, t_kpi_selected)
    model_t_custom = analyze_model(df_t_filtered, 'valoremercato', valid_t_kpi, "KPI selezionati manualmente - Terzini")

# OUTLIERS: Analisi degli outlier per ogni ruolo
    print("Analisi degli outlier per Difensori Centrali")
    print_and_plot_outliers_with_details(df_dc_filtered, model_dc_custom, 'valoremercato', threshold=3)

    print("Analisi degli outlier per Terzini")
    print_and_plot_outliers_with_details(df_t_filtered, model_t_custom, 'valoremercato', threshold=3)

    #  Chiusura della connessione al database
    connection.close()
else:
    print("Impossibile connettersi al database.")
