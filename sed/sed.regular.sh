#!/bin/bash
sed -i -n 's/\(\.rem(\)\(.*\)\, \(.*\))/\2:\3\/2px/' $1
sed -i -n 's/\(\.rem(\)\(.*\)\,\(.*\))/\2:\3\/2px/' $1
sed -i -n 's/\(\.dpr(\)\(.*\)\,\(.*\))/\2:\3px/' $1
sed -i -n 's/\.font-size(\(.*\))/font-size:\1\/2px/' $1
