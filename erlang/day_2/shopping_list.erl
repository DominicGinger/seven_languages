-module(shopping_list).
-export([calc/1]).

calc(L) -> [{Product,Q*P} || {Product,Q,P} <- L].
