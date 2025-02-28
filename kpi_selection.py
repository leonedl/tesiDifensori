import pandas as pd
from data_processing import fit_model


def select_top_kpi_by_p_value(model, top_n=15, p_value_threshold=0.50):
    """
    Seleziona fino ai primi n KPI con p-value inferiori alla soglia specificata.
    Restituisce solo i KPI sotto la soglia, anche se sono meno di top_n.
    """
    # Crea un dataframe con i dettagli del modello
    summary_df = pd.DataFrame({
        'KPI': model.params.index,
        'Coefficient': model.params.values,
        'Standard Error': model.bse.values,
        'p-value': model.pvalues.values,
        'Z-score': model.params.values / model.bse.values
    }).sort_values(by='p-value')

    # Filtra KPI con p-value sotto la soglia impostata
    filtered_kpi = summary_df[(summary_df['KPI'] != 'const') & (summary_df['p-value'] <= p_value_threshold)]

    # Seleziona solo i KPI fino a top_n o restituisce tutti i KPI sotto soglia se meno di top_n
    top_kpi = filtered_kpi.head(top_n) if len(filtered_kpi) > 0 else filtered_kpi

    # Messaggio di avviso se il numero di KPI selezionati è inferiore a top_n
    if len(top_kpi) < top_n:
        print(f"Attenzione: solo {len(top_kpi)} KPI soddisfano la soglia di p-value di {p_value_threshold}.")

    return top_kpi


def fit_and_print_r2_with_top_kpi(df, target, top_kpi):
    """
    Adatta un modello con solo i migliori KPI e stampa l'R^2.
    """
    top_kpi_features = top_kpi['KPI'].values
    model = fit_model(df, target, top_kpi_features)
    print(f"R^2 con i migliori KPI selezionati: {model.rsquared:.4f}")
    return model.rsquared


def select_custom_kpi(df, selected_kpi):
    """
    Verifica e seleziona i KPI scelti manualmente che sono presenti nel dataset.
    """
    # Controlla quali KPI sono presenti nel dataset
    available_kpi = [kpi for kpi in selected_kpi if kpi in df.columns]

    # Messaggio di avviso per KPI non trovati
    missing_kpi = set(selected_kpi) - set(available_kpi)
    if missing_kpi:
        print(
            f"Attenzione: i seguenti KPI non sono stati trovati nel dataset: {', '.join(missing_kpi)}")
    return available_kpi


def fit_and_print_r2_with_custom_kpi(df, target, custom_kpi):
    """
    Adatta un modello con solo i KPI selezionati manualmente e stampa l'R^2.
    """
    model = fit_model(df, target, custom_kpi)
    print(f"R^2 con i KPI selezionati manualmente: {model.rsquared:.4f}")
    return model
