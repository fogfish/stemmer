# Stemmer 

Erlang implementation of Porter algorithm (an algorithm for suffix stripping).

http://tartarus.org/~martin/PorterStemmer/def.txt

## Usage

```erlang
	<<"motor">> = stemmer:word(<<"motoring">>).
```

