%%
%%   Copyright (c) 2013, Dmitry Kolesnikov
%%   All Rights Reserved.
%%
%%   Licensed under the Apache License, Version 2.0 (the "License");
%%   you may not use this file except in compliance with the License.
%%   You may obtain a copy of the License at
%%
%%       http://www.apache.org/licenses/LICENSE-2.0
%%
%%   Unless required by applicable law or agreed to in writing, software
%%   distributed under the License is distributed on an "AS IS" BASIS,
%%   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
%%   See the License for the specific language governing permissions and
%%   limitations under the License.
%%
%% @description
-module(stemmer_tests).
-include_lib("eunit/include/eunit.hrl").

-define(do(A, B), B = binary_to_atom(stemmer:word(A), utf8)).


rule1_test() ->
	%% a
	?do(caresses, caress),
	?do(ponies,   poni),
	?do(ties,     ti),
	?do(caress,   caress),
	?do(cats,     cat),

	%% b
	?do(feed, feed),
	%?do(agreed, agree),
	?do(agreed, agre),
	?do(plastered, plaster),
	?do(bled, bled),
	?do(motoring, motor),
	?do(sing, sing),

	%?do(conflated, conflate),
	?do(conflated, conflat),
	%?do(troubled, trouble),
	?do(troubled, troubl),
	?do(sized, size),
	?do(hopping, hop),
	?do(tanned, tan),
	?do(falling, fall),
	?do(hissing, hiss),
	?do(fizzed, fizz),
	?do(failing, fail),
	?do(filing, file).


rule2_test() ->
	%?do(relational     ,  relate),
	?do(relational     ,  relat),
   %?do(conditional    ,  condition),
   ?do(conditional    ,  condit),
   %?do(rational       ,  rational),
   ?do(rational       ,  ration),
   %?do(valenci        ,  valence),
   ?do(valenci        ,  valenc),
   %?do(hesitanci      ,  hesitance),
   ?do(hesitanci      ,  hesit),
   %?do(digitizer      ,  digitize),
   ?do(digitizer      ,  digit),
   %?do(conformabli    ,  conformable),
   ?do(conformabli    ,  conform),
   %?do(radicalli      ,  radical),
   ?do(radicalli      ,  radic),
   %?do(differentli    ,  different),
   ?do(differentli    ,  differ),
   ?do(vileli         ,  vile),
   %?do(analogousli    ,  analogous),
   ?do(analogousli    ,  analog),
   %?do(vietnamization ,  vietnamize),
   ?do(vietnamization ,  vietnam),
   %?do(predication    ,  predicate),
   ?do(predication    ,  predic),
   %?do(operator       ,  operate),
   ?do(operator       ,  oper),
   ?do(feudalism      ,  feudal),
   %?do(decisiveness   ,  decisive),
   ?do(decisiveness   ,  decis),
   %?do(hopefulness    ,  hopeful),
   ?do(hopefulness    ,  hope),
   ?do(callousness    ,  callous),
   ?do(formaliti      ,  formal),
   %?do(sensitiviti    ,  sensitive),
   ?do(sensitiviti    ,  sensit),
   %?do(sensibiliti    ,  sensible).
   ?do(sensibiliti    ,  sensibl).



rule3_test() ->
   ?do(triplicate     ,  triplic),
   ?do(formative      ,  form),
   ?do(formalize      ,  formal),
   %?do(electriciti    ,  electric),
   ?do(electriciti    ,  electr),
   %?do(electrical     ,  electric),
   ?do(electrical     ,  electr),
   ?do(hopeful        ,  hope),
   ?do(goodness       ,  good).

rule4_test() ->
   ?do(revival        ,  reviv),
   ?do(allowance      ,  allow),
   ?do(inference      ,  infer),
   ?do(airliner       ,  airlin),
   ?do(gyroscopic     ,  gyroscop),
   ?do(adjustable     ,  adjust),
   ?do(defensible     ,  defens),
   ?do(irritant       ,  irrit),
   ?do(replacement    ,  replac),
   ?do(adjustment     ,  adjust),
   ?do(dependent      ,  depend),
   ?do(adoption       ,  adopt),
   ?do(homologou      ,  homolog),
   ?do(communism      ,  commun),
   ?do(activate       ,  activ),
   ?do(angulariti     ,  angular),
   ?do(homologous     ,  homolog),
   ?do(effective      ,  effect),
   ?do(bowdlerize     ,  bowdler).

rule5_test() ->
   ?do(probate        ,  probat),
   ?do(rate           ,  rate),
   ?do(cease          ,  ceas),
   ?do(controll       ,  control),
   ?do(roll           ,  roll).
