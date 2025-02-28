import pandas as pd
import matplotlib.pyplot as plt

def print_and_plot_model_summary(model, title, plot):
    """
    Stampa il riepilogo del modello (R², p-value, coefficienti, Z-score).
    Opzionalmente, visualizza i grafici per p-value e Z-score
    """

    print(f"\n{title}")
    print("=" * len(title))
    print(f"R^2: {model.rsquared:.4f}")

    # Creazione del dataframe riepilogativo
    summary_df = pd.DataFrame({
        'KPI': model.params.index,
        'Coefficient': model.params.values,
        'Standard Error': model.bse.values,
        'p-value': model.pvalues.values,
        'Z-score': model.params.values / model.bse.values
    })
    print(summary_df.to_string(index=True))

    # Opzionale: generazione grafici - Usare Flag
    if plot:
        fig, axes = plt.subplots(1, 2, figsize=(15, 6))
        summary_df[summary_df['KPI'] != 'const'].plot.barh(x='KPI', y='p-value', ax=axes[0], color="skyblue")
        axes[0].set_title(f"p-value per KPI - {title}")
        axes[0].axvline(x=0.05, color='red', linestyle='--', label="Significatività a 0.05")
        axes[0].legend()

        summary_df[summary_df['KPI'] != 'const'].plot.barh(x='KPI', y='Z-score', ax=axes[1], color="salmon")
        axes[1].set_title(f"Z-score per KPI - {title}")
        plt.tight_layout()
        plt.show()
