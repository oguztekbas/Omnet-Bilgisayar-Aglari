simple node
{
    gates:
        inout gate[];
}

network Network
{
    @display("bgb=632,406");
    
   
        
    
    submodules:
        root: node {
            @display("p=73,121");
        }
        node1: node {
            @display("p=212,49");
        }
        node2: node {
            @display("p=408,49");
        }
        node3: node {
            @display("p=212,190");
        }
        node4: node {
            @display("p=408,190");
        }
    connections:

 																   // -------------------------------------------------
                                                                  
        root.gate++ <--> { delay = 8s;}  <--> node1.gate++;        // Verilen �devin sim�lasyonundaki delayler girildi. 
        node1.gate++ <-->  { delay = 1s;} <--> node2.gate++;       // .cc dosyas�nda da  bu kanallardaki delayler channel nesneleri arac�l���yla
        node4.gate++ <-->  { delay = 6s;}  <--> node3.gate++;      // cekildi ve kar��la�t�rma yap�ld�.
        node3.gate++ <--> { delay = 2s;}  <--> root.gate++;        // ona g�re de gidilecek yol her a�amada belirlendi.
        node1.gate++ <-->  { delay = 2s;} <--> node4.gate++;       // Bu sim�lasyonda Root kaynak d�g�m , node4 target-hedef d�g�m.
        node2.gate++ <-->{ delay = 4s;}  <--> node4.gate++;
        node1.gate++ <-->{ delay = 1s;} <--> node3.gate++;         // -------------------------------------------------
}