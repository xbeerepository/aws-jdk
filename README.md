# Amazon Corretto verrouillé

Ce pack candidat installe **Corretto 25.0.4.7.1** depuis une archive versionnée.
Les empreintes SHA-256 Linux/x64 et Linux/aarch64 viennent de la
[publication officielle](https://github.com/corretto/corretto-25/releases/tag/25.0.4.7.1).
La validation d'exécution de ce jalon porte sur Linux/amd64.

Le binaire xbee hôte et celui qui exécute le provisionnement dans le conteneur
doivent prendre en charge `url.sha256`. Pour tester une compilation locale,
définir `XBEE_GUEST_BINARY` avec le chemin absolu de ce binaire.

Une surcharge de `xbee.version` doit préciser la version complète de la
publication, et mettre à jour `archiveSha256.amd64` ou `archiveSha256.arm64`
avec l'empreinte de l'archive correspondante. Une version majeure seule, comme
`25`, ne sélectionne plus implicitement la dernière mise à jour.

Xbee contrôle aussi les fichiers déjà en cache. Une empreinte incorrecte
interrompt le provisionnement avant extraction et avant le script `link.sh`.
Les commandes `java` et `javac`, `JAVA_HOME` et le lien `jdk` restent exposés.
