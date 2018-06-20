package model;
import javax.persistence.Entity;

@Entity
public class Generale {
    double fatturatoTotaleAnnuo;
    double gFatturatoTotaleGiornaliero;
    int commesseDaIniziare;
    int commesseInLavorazione;
    int commesseComplete;
    int commesseInterrotte;
    int reclamiGiornalieri;
    int reclamiAnnui;
    int risorsePresenti;
    int risorseAssenti;
    int infortuniGiornalieri;
    int infortuniAnnui;

    public double getFatturatoTotaleAnnuo() {
        return fatturatoTotaleAnnuo;
    }

    public void setFatturatoTotaleAnnuo(double fatturatoTotaleAnnuo) {
        this.fatturatoTotaleAnnuo = fatturatoTotaleAnnuo;
    }

    public double getgFatturatoTotaleGiornaliero() {
        return gFatturatoTotaleGiornaliero;
    }

    public void setgFatturatoTotaleGiornaliero(double gFatturatoTotaleGiornaliero) {
        this.gFatturatoTotaleGiornaliero = gFatturatoTotaleGiornaliero;
    }

    public int getCommesseDaIniziare() {
        return commesseDaIniziare;
    }

    public void setCommesseDaIniziare(int commesseDaIniziare) {
        this.commesseDaIniziare = commesseDaIniziare;
    }

    public int getCommesseInLavorazione() {
        return commesseInLavorazione;
    }

    public void setCommesseInLavorazione(int commesseInLavorazione) {
        this.commesseInLavorazione = commesseInLavorazione;
    }

    public int getCommesseComplete() {
        return commesseComplete;
    }

    public void setCommesseComplete(int commesseComplete) {
        this.commesseComplete = commesseComplete;
    }

    public int getCommesseInterrotte() {
        return commesseInterrotte;
    }

    public void setCommesseInterrotte(int commesseInterrotte) {
        this.commesseInterrotte = commesseInterrotte;
    }

    public int getReclamiGiornalieri() {
        return reclamiGiornalieri;
    }

    public void setReclamiGiornalieri(int reclamiGiornalieri) {
        this.reclamiGiornalieri = reclamiGiornalieri;
    }

    public int getReclamiAnnui() {
        return reclamiAnnui;
    }

    public void setReclamiAnnui(int reclamiAnnui) {
        this.reclamiAnnui = reclamiAnnui;
    }

    public int getRisorsePresenti() {
        return risorsePresenti;
    }

    public void setRisorsePresenti(int risorsePresenti) {
        this.risorsePresenti = risorsePresenti;
    }

    public int getRisorseAssenti() {
        return risorseAssenti;
    }

    public void setRisorseAssenti(int risorseAssenti) {
        this.risorseAssenti = risorseAssenti;
    }

    public int getInfortuniGiornalieri() {
        return infortuniGiornalieri;
    }

    public void setInfortuniGiornalieri(int infortuniGiornalieri) {
        this.infortuniGiornalieri = infortuniGiornalieri;
    }

    public int getInfortuniAnnui() {
        return infortuniAnnui;
    }

    public void setInfortuniAnnui(int infortuniAnnui) {
        this.infortuniAnnui = infortuniAnnui;
    }

    @Override
    public String toString() {
        return "Generale{" +
                "fatturatoTotaleAnnuo=" + fatturatoTotaleAnnuo +
                ", gFatturatoTotaleGiornaliero=" + gFatturatoTotaleGiornaliero +
                ", commesseDaIniziare=" + commesseDaIniziare +
                ", commesseInLavorazione=" + commesseInLavorazione +
                ", commesseComplete=" + commesseComplete +
                ", commesseInterrotte=" + commesseInterrotte +
                ", reclamiGiornalieri=" + reclamiGiornalieri +
                ", reclamiAnnui=" + reclamiAnnui +
                ", risorsePresenti=" + risorsePresenti +
                ", risorseAssenti=" + risorseAssenti +
                ", infortuniGiornalieri=" + infortuniGiornalieri +
                ", infortuniAnnui=" + infortuniAnnui +
                '}';
    }
}
