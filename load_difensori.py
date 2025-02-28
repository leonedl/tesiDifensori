import mysql.connector
import pandas as pd


def connect_to_database(host, user, password, database):
    """Stabilisce connessione con il database difensoriseriea"""
    try:
        connection = mysql.connector.connect(
            host=host,
            user=user,
            password=password,
            database=database
        )
        print("Connessione al database riuscita!")
        return connection
    except mysql.connector.Error as err:
        print(f"Errore di connessione: {err}")
        return None


def load_data(connection, ruolo=None):
    """
    Carica i dati dei giocatori unendo le tabelle.
    Può filtrare per ruolo, se specificato.
    """
    query = """
    SELECT 
        g.idgiocatore, g.nome, g.eta, g.squadra, g.ruolo, g.valoremercato, g.altezza, g.rating,
        sp.minuti_giocati, sp.gialli, sp.rossi,
        st.gol, st.assist, st.tiri_totali, st.passaggi_chiave, st.percentuale_contrastivinti,
        st.intercetti, st.tackle, st.salvataggi, st.dribbling_subiti, st.percentuale_duelliaerei,
        st.expected_goals, st.dribbling_riusciti, st.cross_riusciti, st.accuratezza_cross,
        stat.percentuale_passaggiriusciti, stat.possesso_perso, stat.palle_recuperate, stat.falli_commessi,
        stat.precisione_pallelunghe, stat.precisione_passaggicorti, stat.possesso_vinto
    FROM giocatore g
    JOIN statistiche_psicologiche sp ON g.idgiocatore = sp.idgiocatore
    JOIN statistiche_tecniche st ON g.idgiocatore = st.idgiocatore
    JOIN statistiche_tattiche stat ON g.idgiocatore = stat.idgiocatore
    """

    if ruolo:
        query += f" WHERE g.ruolo = '{ruolo.strip()}'"

    try:
        df = pd.read_sql(query, connection)

        if df.empty:
            print(f"Nessun dato trovato per il ruolo: {ruolo}")
            return None
        
        return df

    except Exception as e:
        print(f"Errore durante l'esecuzione della query: {e}")
        return None



if __name__ == "__main__":
    # Configurazione del database
    db_host = "localhost"
    db_user = "root"
    db_password = ""
    db_name = "difseriea"

    # Connessione al database
    connection = connect_to_database(db_host, db_user, db_password, db_name)
    if connection:
        # Caricamento dei dati
        data = load_data(connection, ruolo='t')  # Esempio per i Difensori Centrali
        if data is not None:
            print("Dati caricati con successo:")
            print(data.head())  # Mostra i primi 5 record
        connection.close()
