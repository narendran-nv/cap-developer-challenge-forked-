using { managed, cuid  } from '@sap/cds/common';

namespace golf;

entity Rounds : cuid , managed {
  title  : String(111);
  Holes  : Composition of many Holes;
}

entity Holes : cuid  {
  score  : Integer;
  par    : Integer;
  round  : Association to Rounds;
  Shots  : Composition of many Shots;
}

entity Shots : cuid  {
  hole   : Association to Holes;
}