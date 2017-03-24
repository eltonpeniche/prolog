%% Prototipos para serem completados
%% decimal p extenso e vice versa
%% ?- dx(ROM,[1,2,3],[]).
%% ?- dx([c,x,x,i,i,i],X,[]).

dx(X)-->dddd(X);ddd(X);dd(X);d(X).
d([])-->[0].
d([i])-->[1].
d([i,i])-->[2].
d([i,i,i])-->[3].
d([i,v])-->[4].
d([v])-->[5].
d([v,i])-->[6].
d([v,i,i])-->[7].
d([v,i,i,i])-->[8].
d([i,x])-->[9].

dd([x])-->[1,0].
dd([x,i])-->[1,1].
dd([x,i,i])-->[1,2].
dd([x,i,i,i])-->[1,3].
dd([x,i,v])-->[1,4].
dd([x,v])-->[1,5].
dd([x,v,i])-->[1,6].
dd([x,v,i,i])-->[1,7].
dd([x,v,i,i,i])-->[1,8].
dd([x,i,x])-->[1,9].
dd([x,x])-->[2,0].
dd([x,x|D])-->[2],d(D).
dd([x,x,x])-->[3,0].
dd([x,x,x|D] )-->[3],d(D).
dd([x,l])-->[4,0].
dd([x,l|D] )-->[4],d(D).
dd([l])-->[5,0].
dd([l|D] )-->[5],d(D).
dd([l,x])-->[6,0].
dd([l,x|D] )-->[6],d(D).
dd([l,x,x])-->[7,0].
dd([l,x,x|D] )-->[7],d(D).
dd([l,x,x,x])-->[8,0].
dd([l,x,x,x|D] )-->[8],d(D).
dd([x,c])-->[9,0].
dd([x,c|D] )-->[9],d(D).

ddd([c])-->[1,0,0].
ddd([c|D])-->[1,0],d(D).
ddd([c|DD])-->[1],dd(DD).
ddd([c,c])-->[2,0,0].
ddd([c,c|D])-->[2,0],d(D).
ddd([c,c|DD])-->[2],dd(DD).
ddd([c,c,c])-->[3,0,0].
ddd([c,c,c|D])-->[3,0],d(D).
ddd([c,c,c|DD])-->[3],dd(DD).
ddd([c,d])-->[4,0,0].
ddd([c,d|D])-->[4,0],d(D).
ddd([c,d|DD])-->[4],dd(DD).
ddd([d])-->[5,0,0].
ddd([d|D])-->[5,0],d(D).
ddd([d|DD])-->[5],dd(DD).
ddd([d,c])-->[6,0,0].
ddd([d,c|D])-->[6,0],d(D).
ddd([d,c|DD])-->[6],dd(DD).
ddd([d,c,c])-->[7,0,0].
ddd([d,c,c|D])-->[7,0],d(D).
ddd([d,c,c|DD])-->[7],dd(DD).
ddd([d,c,c,c])-->[8,0,0].
ddd([d,c,c,c|D])-->[8,0],d(D).
ddd([d,c,c,c|DD])-->[8],dd(DD).
ddd([c,m])-->[9,0,0].
ddd([c,m|D])-->[9,0],d(D).
ddd([c,m|DD])-->[9],dd(DD).

dddd([m])-->[1,0,0,0].
dddd([m|D])-->[1,0,0],d(D).
dddd([m|DD])-->[1,0],dd(DD).
dddd([m|DDD])-->[1],ddd(DDD).
dddd([m,m])-->[2,0,0,0].
dddd([m,m|D])-->[2,0,0],d(D).
dddd([m,m|DD])-->[2,0],dd(DD).
dddd([m,m|DDD])-->[2],ddd(DDD).
dddd([m,m,m])-->[3,0,0,0].
dddd([m,m,m|D])-->[3,0,0],d(D).
dddd([m,m,m|DD])-->[3,0],dd(DD).
dddd([m,m,m|DDD])-->[3],ddd(DDD).


