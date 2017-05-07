CREATE DATABASE IF NOT EXISTS nested;

CREATE TABLE IF NOT EXISTS node_tree(
  idNode INT NOT NULL AUTO_INCREMENT,
  level INT NOT NULL,
  iLeft INT NOT NULL,
  iRight INT NOT NULL,
  PRIMARY KEY ( idNode )
);

CREATE TABLE IF NOT EXISTS node_tree_names(
  idNode INT NOT NULL,
  language VARCHAR(50) NOT NULL,
  nodeName VARCHAR(100) NOT NULL,
  PRIMARY KEY ( idNode, language ),
  FOREIGN KEY (idNode) REFERENCES node_tree(idNode) ON DELETE CASCADE
);
