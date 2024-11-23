#!/bin/sh

sqlite3 bdd.sqlite <scheme.sql
sqlite3 bdd.sqlite <create.sql
