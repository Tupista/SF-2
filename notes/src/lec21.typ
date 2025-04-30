#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*定理* $quad$ 设幂级数 $display(sum_(n=0)^oo a_n x^n)$ 在 $x_0!=0$ 处收敛, 则 $display(sum_(n=0)^oo)$ 在 $(-abs(x_0),abs(x_0))$ 内闭绝对一致收敛. 

*证明* $quad$ 任给 $r>0,0<r<abs(x_0),$ 来证级数在 $[-r,r]$ 绝对一致收敛. 

先由 $display(sum_(n=0)^oo a_n x_0^n)$ 收敛可得 $a_n x_0^n->0,$ 则 $exists M>0, abs(a_n x_0^n)<M, forall n>=1.$

$forall x in [-r,r],$ $ abs(a_n x^n)<=abs(a_n)r^n<=abs(a_n)abs(x_0^n)(r/abs(x_0))^n<=M(r/abs(x_0))^n $ 由 M 判别法可知 $display(sum_(n=0)^oo a_n x^n)$ 在 $[-r,r]$ 上绝对一致收敛, 再由 $r$ 的任意性得证. #h(1fr) $square.stroked$

*推论* $quad$ 令 $R=sup{abs(x_0):display(sum_(n=0)^oo a_n x_0^n) "收敛"},C={abs(x_0):display(sum_(n=0)^oo a_n x_0^n) "收敛"} subset [0,+oo).$

- $R=0, display(sum_(n=0)^oo a_n x^n)$ 收敛域为 ${0}.$

- $R=+infinity, display(sum_(n=0)^oo a_n x^n)$ 收敛域为 $(-oo,+oo).$

- $0<R<+oo, display(sum_(n=0)^oo a_n x^n)$ 在 $(-R,R)$ 收敛, 且在 $(-oo,-R)union(R,+oo)$ 发散. 

 在 $(-R,R)$ 内闭绝对一致收敛. 

*定义* $quad$ 上述推论中的 $R$ 称为幂级数 $display(sum_(n=0)^oo a_n x^n)$ 的*收敛半径*. 

*定理* $quad$ 对于幂级数 $display(sum_(n=0)^oo a_n x^n),$ 定义 $ rho=limits(overline(lim))_(n->+oo) root(n,abs(a_n)) $ 则幂级数的收敛半径为 $R=rho^(-1).$ 特殊的 $rho,R$ 有自然的理解. 

*证明* $quad limits(overline(lim))_(n->+oo) root(n,abs(a_n x^n))=rho abs(x).$ 由 Cauchy 判别法可知当 $rho abs(x)<1$ 时收敛, 当 $rho abs(x)>1$ 时发散. 

- 若 $rho in (0,+oo),$ 则可得 $R=rho^(-1).$

- 若 $rho=0$ 则 $rho abs(x)$ 恒成立, 于是收敛半径为 $+oo.$

- 若 $rho=+oo, forall abs(x)!=0, rho abs(x)=+oo>1$ 发散, 收敛半径为 $0.$ #h(1fr) $square.stroked$

*定理* $quad$ 对于幂级数 $display(sum_(n=0)^oo a_n x^n),$ 若极限 $ rho=lim_(n->+oo) abs(a_(n+1))/abs(a_n) $ 存在 (容许 $+oo$), 则 $display(sum_(n=0)^oo a_n x^n)$ 的收敛半径为 $R=rho^(-1).$

*证明* $quad$ $ limits(underline(lim))_(n->oo) abs(a_(n+1))/abs(a_n)<=limits(underline(lim))_(n->oo) root(n,abs(a_n))<=limits(overline(lim))_(n->oo) root(n,abs(a_n))<=limits(overline(lim))_(n->oo) abs(a_(n+1))/abs(a_n). $ #h(1fr) $square.stroked$

*例* $quad display(sum_(n=1)^oo n! x^n^n)$ 的收敛半径. 

*解* $quad rho=limits(overline(lim))_(n->oo) root(n,abs(a_n))=limits(overline(lim))_(n->oo) root(n^n,n!)<=limits(overline(lim))_(n->oo) root(n^n,n^n)=1 ==>rho=1.$

对于幂级数 $sum a_n (x-x_0)^n=sum a_n t^n,$ 若其收敛半径为 $R in (0,+oo),$ 则原级数在 $(x_0-R,x_0+R)$ 内收敛, 在 $(-oo,x_0-R)union(x_0+R,+oo)$ 发散. 

== $section$ 幂级数的性质

*定理 (Abel)* $quad$ 设 $display(sum_(n=0)^oo a_n x^n)$ 的收敛半径为 $R>=0,$ 则 

- $sum a_n x^n$ 在 $(-R,R)$ 内闭绝对一致收敛, 

- 若 $sum a_n R^n$ 收敛, 则 $sum a_n x^n$ 在 $(-R,R]$ 内闭一致收敛, 

- 若 $sum a_n (-R)^n$ 收敛, 则 $sum a_n x^n$ 在 $[-R,R)$ 内闭一致收敛. 

也就是说, $sum a_n x^n$ 在其收敛域内闭一致收敛. 

*证明* $quad$ 来证第 3 条结论. 只要证级数在 $[-R,0]$ 一致收敛. $ sum_(n=0)^oo a_n x^n=sum_(n=0)^oo a_n (-R)^n (-x/R)^n, $ 其中 $sum a_n (-R)^n$ 一致收敛, $display((-x/R)^n)$ 在 $[-R,0]$ 一致有界且单调减. 由 Abel 判别法知幂级数在 $[-R,0]$ 一致收敛. 

*推论* $quad$ 幂级数 $display(sum_(n=0)^oo a_n x^n)$ 在其收敛域内连续. 

*例* $ 1+x+x^2+dots=1/(1-x), \ underbracket(x+x^2/2+x^3/3+dots,S(x))=-ln(1-x). $ 左端的收敛域为 $[-1,1),$ 于是 $ S(-1)=lim_(x->-1) S(x)=lim_(x->-1) -ln(1-x)=-ln 2. $

*定理* $quad$ 设 $display(sum_(n=0)^oo a_n (x-x_0)^n)$ 的收敛半径 $R>0,$ 则任给收敛域内的两个点 $x_1,x_2,$ 有 $ integral_(x_1)^(x_2) sum_(n=0)^oo a_n (x-x_0)^n =& sum_(n=0)^oo integral_(x_1)^(x_2) a_n (x-x_0)^n \ =& sum_(n=0)^oo a_n/(n+1) [(x_2-x_0)^(n+1)-(x_1-x_0)^(n+1)]. $ 取 $x_1=x_0,x_2=x$ 即得 $ integral_(x_0)^x sum_(n=0)^oo a_n (x-x_0)^n=sum_(n=0)^oo a_n/(n+1) (x-x_0)^(n+1), $ 而 $ limits(overline(lim))_(n->oo) root(n,abs(a_(n-1))/n)=limits(overline(lim))_(n->oo) root(n,abs(a_n)). $ 所以逐项积分得到的幂级数的收敛半径与原幂级数的收敛半径一致, 且收敛域不会变小. 

对于幂级数 $sum a_n x^n$ 和 $sum a_n/(n+1) x^(n+1),$ 若 $sum a_n R^n$ 收敛, $ sum a_n/(n+1) R^(n+1)=sum a_n R^n dot R/(n+1) $ 可由 Abel 判别法得到收敛. 

*定理* $quad$ 设 $sum a_n (x-x_0)^n$ 的收敛半径为 $R>0,$ 记和函数为 $f(x),$ 则 $f in C^oo (-R,R),$ \ 且 $forall k>=1,$ $ f^((k))(x)=sum_(n=k)^oo a_n n (n-1)dots (n-k+1) (x-x_0)^(n-k). $

*证明* $ limits(overline(lim))_(n->oo) root(n,abs(a_n)n dots (n-k+1))=limits(overline(lim))_(n->oo) root(n,abs(a_n)). $ 于是求导后的幂级数在 $(-R,R)$ 内闭一致收敛, 因而可逐项求导. #h(1fr) $square.stroked$

\**生成函数* / Generating function

任给序列 ${a_n},$ 生成幂级数 $display(sum_(n=0)^oo a_n x^n)$ 称为序列的生成函数. 

$display({1/n})$ 的生成函数 $display(x+x^2/2+dots)=-ln(1-x).$