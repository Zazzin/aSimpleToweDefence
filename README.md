# aSimpleToweDefence
L'obiettivo è creare un semplice gioco con una meccanica di difesa delle torri, il giocatore dovrà difendere un "nucleo centrale" dalle eventuali odante avendo la possibilità di piazzare diverse torrette per abbattere gli avversari.
## Le Meccaniche
il nucleo da difedere avrà una vita pari a 80 punti e ogni volta che verrà toccato da un avversario verrà perderà n punti vita
## I nemici
esisteranno tre tipi di avversari:
- Rettangolo: poca vita, veloce, ma infligge buon quantitativo di danni
- Quadrato: vita media, ha una velocità intermedia e infligge pochi danni
- Cerchio: vita media, lento ma infligge un elevato numero di danni
## Livelli 
abbiamo principalmente 4 livelli i quali sono differenziati da odante diverse e percorsi più lunghi.

# Il gioco
l'utente può posizionare le torrette con l'obbiettivo di difendere la torre, può posizionare diverse torrette all'interno della griglia tramite una rappresentazione matriciale, utilizzando tale struttura dati la rappresentazio e la selezione della matrice sono due componenti distinti

# Le gerarchie
le classi delle torrette ereditanto tutte la classe astratta Tower che estende tutti tipi di torretta la stessa cosa vale per i nemici, la classe astratta Enemy estende tutte le classi nemico

# Le problematiche 
indirizzamento degli avversari verso un deterinato percorso rispettando un percorso "complesso", ho deciso di implementare quindi lo spawning dei nemici sul margine sinistro e alto per semplificare il percorso da fare. 

