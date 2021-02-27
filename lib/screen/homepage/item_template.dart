import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ItemTemplate extends StatefulWidget {
  @override
  _ItemTemplateState createState() => _ItemTemplateState();
}

class _ItemTemplateState extends State<ItemTemplate> {
  int myCounter = 1;
  final _controller = TextEditingController(text: '1');

  @override
  void dispose() {
    // Clean up the controller when the widget is removed from the
    // widget tree.
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Text(
                    "Prodotto Hygenia",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                  Image(
                    image: AssetImage(
                        'assets/Immagine_2021-02-27_153508.jpg'),
                  ),
                  Text(
                    "Quantità",
                    style:
                        TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.white70, width: 2),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    // margin: EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment:
                          MainAxisAlignment.spaceEvenly,
                      children: [
                        Expanded(
                          child: IconButton(
                            icon: Icon(
                                Icons.exposure_minus_1_outlined),
                            onPressed: () {
                              if (myCounter > 1) {
                                setState(() {
                                  _controller.text =
                                      (myCounter -= 1)
                                          .toString();
                                });
                              }
                            },
                          ),
                        ),
                        Expanded(
                            child: TextFormField(
                          controller: _controller,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[0-9]')),
                          ],
                        )),
                        Expanded(
                          child: IconButton(
                            icon: Icon(Icons.plus_one),
                            onPressed: () {
                              setState(() {
                                _controller.text =
                                    (myCounter += 1).toString();
                              });
                            },
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    elevation: 2,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                          color: Colors.white70, width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(0.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              'Descrizione',
                              style: TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.fromLTRB(
                                8, 0, 8, 8),
                            child: Text(
                                '''Se desideri installare un dispenser di sapone piccolo all’interno dei bagni delle camere della tua struttura ricettiva, apprezzerai sicuramente la nuovissima linea Enjoy prodotta dall’azienda italiana Hygenia. Una gamma ultra moderna nel design  e nel funzionamento, perfetta per hotel, bed and breakfast, guest house e altre attività con servizi igienici non molto trafficati (es. uffici, piccoli negozi).

Il dispenser sapone Enjoy è perfetto per essere integrato nella doccia o sopra il lavabo. Non dovrai smontarlo per ricaricarlo ma semplicemente inserire il comodo flacone da 280 ml, pensato proprio per evitare il consumo di prodotti monouso, fornendo al cliente la possibilità la quantità di detergente che desidera senza sentirsi limitato da una bustina troppo piccola per le sue esigenze.

Totalmente made in Italy, il distributore di sapone vanta un design elegante e raffinato che si sposa alla perfezione con i bagni più moderni, ristrutturati o appena realizzati con complementi d’arredo colorati o meno. La nuance bianca, infatti, non crea limitazioni di alcun genere.

Uno degli aspetti più interessanti del dispenser sapone Enjoy riguarda le tecnologie della Hygenia che consentono di limitare sia i consumi che l’impatto ambientale, monitorando anche i risultati. Al fine di ridurre gli sprechi, il dosatore eroga la giusta quantità di prodotto ogni volta che viene premuto. A farlo sono moltissimi dispenser, ma l’azienda italiana ha creato una soluzione in grado di dimostrarlo: si tratta di un software che tiene conto della quantità di prodotto utilizzato misurando il risparmio ottenuto sia in termini economici che ecologici.'''))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Chiudi'),
        ),
        FlatButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          textColor: Theme.of(context).primaryColor,
          child: const Text('Aggiungi al carrello'),
        ),
      ],
    );
  }
}
