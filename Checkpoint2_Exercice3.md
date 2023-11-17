# **Exercice3**

## **Q3.1**
### **Quel est le matériel réseau A ?**
C'est un switch, il agit sur la couche 2 du modèle OSI  
**Quel est son rôle sur ce schéma vis-à-vis des ordinateurs ?**  
Il permet aux ordinateurs qui sont sur le même réseau de communiquer entre eux ou d'aller vers la passerelle.  

## **Q3.2**
### **Quel est le matériel réseau B ?**
C'est un routeur, il agit sur la couche 3 du modèle OSI
**Quel est son rôle pour le réseau 10.10.0.0/16 ?**
Il permet au réseau 10.10.0.0/16 d'envoyer de communiquer avec les réseaux **10.12.2.0/24** et par le biais du routeur R2 de communiquer avec le réseau **172.16.5.0/24.** Il serrt de passerelle.

## **Q3.3**
### **Que signifie f0/0 et g1/0 sur l’élément B ?**  
Le f0/0 est le nom de l'interface; C'est l'interface FastEthernet N°0. Elles sont généralement reliées à un switch
Le g1/0 indique que cette interface est une GigaEthernet N°1. Elles sont généralement reliées à un autre routeur.

## **Q3.4**
### **Pour l'ordinateur PC2, que représente /16 dans son adresse IP ?**
Le /16 représente le masque de réseaux de l'adresse IP, son CIDR. le /16 correspond à 255.255.0.0

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


