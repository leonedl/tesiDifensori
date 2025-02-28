import matplotlib.pyplot as plt
import numpy as np
import statsmodels.api as sm
import seaborn as sns

def clean_data(df):
    """Pulizia del dataset rimuovendo le righe contenenti valori nulli (NaN)"""
    return df.dropna()

def normalize_data(df, columns_to_normalize):
    """Normalizza le colonne numeriche in modo che abbiano media 0 e deviazione standard 1"""
    df_normalized = df.copy()
    for column in columns_to_normalize:
        mean = df[column].mean()
        std = df[column].std()
        df_normalized[column] = (df[column] - mean) / std
    return df_normalized

def plot_normalized_data_distribution(df, columns_to_normalize):
    """Genera un grafico per visualizzare la distribuzione dei dati normalizzati"""
    plt.figure(figsize=(15, 10))
    for i, column in enumerate(columns_to_normalize, 1):
        plt.subplot((len(columns_to_normalize) // 4) + 1, 4, i)
        sns.histplot(df[column], kde=True, bins=30)
        plt.title(f"Distribuzione Normalizzata: {column}")
    plt.tight_layout()
    plt.show()

def fit_model(df, target, features):
    """Creazione di un modello di regressione lineare utilizzando il metodo dei minimi quadrati ordinari (OLS)"""
    X = df[features]
    y = df[target]
    X = sm.add_constant(X)
    return sm.OLS(y, X).fit()

def plot_regression_results(df, model, target, title):
    """grafico che confronta i valori osservati (reali) con quelli previsti dal modello - grafco regressione"""
    features = [col for col in model.model.exog_names if col != 'const']
    X = df[features]
    X = sm.add_constant(X)
    y = df[target]
    y_pred = model.predict(X)

    plt.figure(figsize=(10, 6))
    plt.scatter(y, y_pred, alpha=0.5)
    plt.plot([y.min(), y.max()], [y.min(), y.max()], color='red', linewidth=2)
    plt.xlabel("Valori osservati")
    plt.ylabel("Valori previsti")
    plt.title(f"{title} (R^2: {model.rsquared:.2f})")
    plt.show()

def print_and_plot_outliers_with_details(df, model, target, threshold=3):
    """
    Identifica e stampa gli outlier con dettagli:
    Nome, Cognome, Squadra, Valore di mercato osservato, previsto e Z-score.
    Visualizza graficamente i punti vicini alla soglia e gli outlier.
    """
    # Calcola i valori previsti
    features = [col for col in model.model.exog_names if col != 'const']
    X = df[features]
    X = sm.add_constant(X)
    y = df[target]
    y_pred = model.predict(X)

    # Calcola lo Z-score
    zscore = (y - y_pred) / np.std(y - y_pred)

    # Filtra gli outlier
    outliers = df[np.abs(zscore) > threshold].copy()
    outliers['Valore Mercato Previsto'] = y_pred[np.abs(zscore) > threshold]
    outliers['Z-score'] = zscore[np.abs(zscore) > threshold]

    # Stampa i dettagli degli outlier
    print(f"\n--- OUTLIER IDENTIFICATI (Soglia Z-score: {threshold}) ---")
    for _, row in outliers.iterrows():
        print(f"Nome: {row['nome']}, Squadra: {row['squadra']}")
        print(
            f"Valore Mercato: {row[target]:.2f}M €, Previsto: {row['Valore Mercato Previsto']:.2f}M €, Z-score: {row['Z-score']:.2f}")
        print("-" * 60)

    # Visualizzazione grafica
    plt.figure(figsize=(12, 6))
    plt.scatter(y, zscore, alpha=0.7, label="Dati")
    plt.axhline(y=threshold, color='red', linestyle='--', label=f"Soglia Z-score ({threshold})")
    plt.axhline(y=-threshold, color='red', linestyle='--')
    plt.xlabel("Valori di mercato osservati (M €)")
    plt.ylabel("Z-score")
    plt.title("Analisi degli Outlier (Z-score)")
    plt.legend()
    plt.grid(True)

    # Evidenzia gli outlier
    if not outliers.empty:
        plt.scatter(outliers[target], outliers['Z-score'], color='orange', label="Outlier", edgecolors='black')
    plt.legend()
    plt.show()
