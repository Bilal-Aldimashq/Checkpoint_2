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


## **Q3.7**
### **Indiquer parmi tous les ordinateurs du schéma, lesquels vont pouvoir communiquer entre-eux.**

Les ordinateurs PC1, PC3 et PC4 peuvent communiquer entre eux.  
PC2 est sur un autre réseaux et  PC5 sur un autre également, ils ne peuvent communiquer avec aucun autre PC.

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



