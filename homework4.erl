%% @author Eleanor
%% @doc @todo Add description to homework4.


-module(homework4).

%% ====================================================================
%% API functions
%% ====================================================================
-export([test/0]).


	
	
compareLists(List1, List2) when List1 < List2 ->
	-1;
compareLists(List1, List2) when List1 =:= List2 ->
	0;
compareLists(List1, List2) when List1 > List2 andalso List1 =/= List2 ->
	1.

testCompareLists()->
	List1 = [1, 2, 3],
	List2 = [1, 2, 3, 4],
	List3 = [1, 2, 3, 4],
	io:format("~p", [compareLists(List1, List2)]),
	io:format("~n~p", [compareLists(List2, List2)]),
	io:format("~n~p", [compareLists(List3, List1)]).

pairLists(List3, [], []) ->
	List3; 
pairLists(List3, List1, List2) ->
	[H|T] = List1,
	[H1|T1] = List2, 
	pairLists(List3 ++ [{H, H1}], T, T1).

testPairLists() ->
	List1 = [1, 2, 3],
	List2 = [a, b, c],
	List3 = [],
	io:format("~n~p", [pairLists(List3, List1, List2)]).

random_element(List) ->
	Value = random:uniform(erlang:length(List)),
	RandVal = lists:nth(Value, List),
	RandVal.

testRandom_Element() ->
	List1 = [1, 2, 3, 4, 5, 6, 7, 8, 9 , 10],
	io:format("~n~p", [random_element(List1)]),
	io:format("~n~p", [random_element(List1)]).

squareRoot1(List) ->
	List1 = lists:filter(fun(X) -> X >= 0 end, List ),
	SQRList = lists:map(fun(List1) -> math:sqrt(List1) end, List1 ),
	io:format("~n~p", [SQRList]).

squareRoot2(List) ->
	SQRList = [math:sqrt(X) || X <- List, X >= 0],
	io:format("~n~p", [SQRList]).

squareRoot_Test1() ->
	List1 = [-4, -9, 4, 9],
	squareRoot1(List1).

squareRoot_Test2() ->
	List1 = [-4, -9, 4, 9],
	squareRoot2(List1).

bigrams(String1, String2) ->
	WordList1 = string:tokens(String1, " "),
	WordList2 = string:tokens(String2,  " "),
	BigramList = [string:join([X, Y], " ")|| X <- WordList1, Y <- WordList2],
	BigramList.

testBigrams() ->
	bigrams("Hello World", "I like cats").
	
test()->
	testCompareLists(),
	testPairLists(),
	testRandom_Element(),
	squareRoot_Test1(),
	squareRoot_Test2(),
	testBigrams().
	
	
	

%% ====================================================================
%% Internal functions
%% ====================================================================
