# **Exercice3**

## **Q3.1**
### **Quel est le matériel réseau A ?**
C'est un switch, il agit sur la couche 2 du modèle OSI, la couche liaison.   
**Quel est son rôle sur ce schéma vis-à-vis des ordinateurs ?**  
Il permet aux ordinateurs qui sont sur le même réseau de communiquer entre eux ou vers la passerelle.  

## **Q3.2**
### **Quel est le matériel réseau B ?**
C'est un routeur, il agit sur la couche 3 du modèle OSI, la couche réseaux.  
**Quel est son rôle pour le réseau 10.10.0.0/16 ?**  
Il permet au réseau 10.10.0.0/16 d'envoyer de communiquer avec les réseaux **10.12.2.0/24** et par le biais du routeur R2 de communiquer avec le réseau **172.16.5.0/24.** Il sert de passerelle.

## **Q3.3**
### **Que signifie f0/0 et g1/0 sur l’élément B ?**  
Le f0/0 est le nom de l'interface; C'est l'interface FastEthernet N°0. Elles sont généralement reliées à un switch.  
Le g1/0 indique que cette interface est une GigaEthernet N°1. Elles sont généralement reliées à un autre routeur.

## **Q3.4**
### **Pour l'ordinateur PC2, que représente /16 dans son adresse IP ?**
Le /16 représente le masque de réseaux de l'adresse IP, son CIDR. le /16 correspond à 255.255.0.0.

## **Q3.5**
### **Pour ce même ordinateur, que représente l'adresse 10.10.255.254 ?**
Cette adresse représente la passerelle par défaut. Quand il envoie une requête à une adresse qu'il ne connaît pas, PC2 l'enverra sur cette addresse.

## **Q3.6**
### **Pour les ordinateur PC1, PC2, et PC5 donne** : _L'adresse de réseau, La première adresse disponible, La dernière adresse disponible, L'adresse de diffusion_
| | PC1 | PC2 | PC5|  
|--|--|-|---|
| Adresse | 10.10.4.1/16| 10.11.80.2/16 | 10.10.4.7/15 |
| Adresse réseaux | 10.10.0.0/16| 10.11.0.0/16 | 10.10.0.0/15|
| 1er Adresse dispo.| 10.10.0.1/16 | 10.11.0.1/16 | 10.10.0.1/15|
| Dernière adress. dipo.| 10.10.255.254/16| 10.11.255.254/16| 10.11.255.254/15|
| Adresse de broadcast | 10.10.255.255/16 | 10.11.255.255/16 | 10.11.255.255/15|


## **Q3.7**
### **Indiquer parmi tous les ordinateurs du schéma, lesquels vont pouvoir communiquer entre-eux.**

Les ordinateurs PC1, PC3, PC4 et PC5 peuvent communiquer entre eux.  
PC2 est sur un autre réseaux et ne peut communiquer qu'avec PC5.

## **Q3.8**
### **Quel ordinateurs peuvent atteindre le réseau 172.16.5.0/24?**
Les PC1, 3, 4 et 5 pourront l'atteindre grâce à la passerelle 10.10.255.254/16

## **Q3.9**
### **Quel incidence y-a-t'il pour les ordinateurs PC2 et PC3 si on interverti leur ports de connexion sur le matériel A ?**
Si les ports sont configurés par défaut sur le switch, il n'y aura pas d'incidence.
En revanche si les VLAN sont séparés sur les ports du switch, PC3 ne pourra plus communiqué avec PC1 et PC4. PC2 étant sur une autre plage d'adresse il ne communiquera toujours pas.

## **Q3.10**
### **Quelles sont les modifications possible afin de mettre la configuration IP des ordinateurs en dynamique?** 
Il est possible de configurer un DHCP soit par un routeur ou alors un serveur sur chaque réseau.
Sinon un seul serveur DHCP mais avec tout les ordinateurs sous le même réseau.
________________________
# **Analyse de trames**
## **Fichier 1**  
## **Q3.11**
### **Sur le paquet N°5, quelle est l'adresse mac du matériel qui initialise la communication ? Déduire le nom du matériel.**
L'adresse MAC qui initialise la communication est 00:50:79:66:68:00. Son nom est PC1.

## **Q3.12**
### **Est-ce que la communication enregistrée dans cette capture a réussi?**
La communication à réussi, la ligne 6 indique que c'est une réponse à ligne 5. Il s'agit d'un ping avec PC4.

## **Q3.13**
### **Dans cette capture, à quel matériel correspond le request et le reply ?**
Request et reply correpondent à deux machines testant leur communication.  
La machine qui initie la demande (request) est: PC1; Adresse IP: 10.10.4.1; Adresse MAC: 00:50:79:66:68:00.  
La machine qui répond (Reply) est: PC4; Adresse IP: 10.10.4.2; Adresse MAC: 00:50:79:66:68:03.

## **Q3.14**
### **Dans le paquet N°2, quel est le protocole encapsulé ? Quel est son rôle ?**
Il s'agit du protocol **ARP**, il associe l'adresse IPV4 à l'adresse MAC.

## **Q3.15**
### **Quels ont été les rôles des matériels A et B dans cette communication ?**
Le rôle de A étant un switch, il permet d'interconnecter PC1 et PC4 sans qu'ils soient directement liés entre eux. Il a transferé les paquets sur les ports destinataires qu'il connaît.
Le rôle de B étant un routeur, Il n'a pas eu besoin d'intervenir dans cette communication car les deux machines sont sur le même réseau.

___________________________

## **FICHIER 2**
## **Q3.16**
### **Qui initialise la communication ? Donner l'adresse IP ainsi que le nom du matériel.**
La machine qui initialise la communication est PC3, son IP est 10.10.80.3

## **Q3.17**
### **Quel est le protocole encapsulé ? Quel est son rôle ?**
Le protocol est ICMP. Son rôle est de contrôler les erreurs de transmission et transporter les messages d'erreur vers la machine source afin de lui signaler l'incident.

## **Q3.18**
### **Est-ce que cette communication a réussi ? Si oui, indique entre quels matériel, si non indique pourquoi cela n'a pas fonctionné.**
La communication n'a pas fonctionné. Cela est du au fait que PC3 (la source) n'est pas sur le même réseau que PC2 (le destinataire).  
PC3 a pour adresse IP 10.10.80.3/16.  
PC2 ayant pour adresse IP 10.11.80.3/16  
PC3 a donc envoyé vers sa default gateway mais PC2 n'étant pas sur le même réseau que l'interface f0/0 du routeur (10.10.255.254), celui-ci n'a pas pu transmettre le paquet.

## **Q3.19**
### **Expliquer la ligne du paquet N° 2**
La ligne 2 indique que le destinataire avec l'adresse IP 10.10.80.2 n'est pas accessible depuis la passerelle 10.10.255.254.

## **Q3.20**
### **Quels ont été les rôles des matériels A et B ?**
Le switch A, a fait le lien entre PC3 et le routeur, il a reçu de PC3 un paquet à destination de la default gateway dont il connaît l'interface et l'a transmis.
Le routeur B, a reçu le paquet en provenance de PC3 pour PC2. Il ne connaît pas l'adresse de PC2 et n'a pas pu le transmettre car le réseau de PC2 ne fait pas partie de sa table de routage, ICMP lui renvoie donc une erreur.
_____________________________

## **FICHIER 3**
## **Q3.21**
### **Dans cette trame, donner les noms et les adresses IP des matériels sources et destination.**
La source est PC4 et son adresse IP est 10.10.4.2/16.  
La destination est une machine sur le réseau 172.16.5.0, et son adresse IP est 172.16.5.253. 

## **Q3.22**
### **Quelles sont les adresses mac source et destination ? Qu'en déduis-tu ?**
La source a pour adresse MAC ca:03:9e:ef:00:38. 
la destination a pour adresse MAC ca:01:da:d2:00:1c.
On peut en déduire qu'il y a des machines connectées au réseaux 172.16.5.0/24 accessible grâce à la table de routage de R2.  

## **Q3.23**
### **A quel emplacement du réseau a été enregistré cette communication ?**
Cette communication a été enregistrer entre les 2 routeurs car les addresses de destination ne changent pas, ce qui suggère que les interfaces interrogées connaissent la route des réseaux concernés par cette communication.  
