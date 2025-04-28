#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

*定理* $quad$ 设 $f_n (x)$ 在 $[a,b]$ 上可导, 且
- $exists x_0 in [a,b], display(lim_(n->infinity) f_n (x_0))$ 收敛, 
- $f'_n (x) arrows g(x), x in [a,b],$

则 
- $exists f(x) "s.t." f_n (x) arrows f(x), x in [a,b],$
- $f'(x)=g(x),$ i.e. $(lim f_n (x))'=lim f'_n (x).$

*证明* $quad$ 已经证明了第一个结论. 若 $f'_n (x) in R[a,b],$ 则 $ &f_n (x)-f_n (x_0)=integral_(x_0)^x f'_n (t)dif t \  ==>& g(x)-g(x_0)=integral_(x_0)^x f'(t)dif t attach(==>,t:?) f'(x)=g(x) $

任取 $x_1 in [a,b],$ 要证 $display(lim_(x->x_1) (f(x)-f(x_1))/(x-x_1)=g(x_1)).$ $ lim_(x->x_1) lim_(n_>infinity) (f_n (x)-f_n (x_1))/(x-x_1) attach(=,t:?) lim_(n->infinity) lim_(x->x_1) (f_n (x)-f_n (x_1))/(x-x_1) $ 令 $ h_n (x)=display(cases((f_n (x)-f_n (x_1))/(x-x_1) "," quad &x!=x_1, f'(x) "," &x=x_1)), $ \  在 $n->infinity$ 时 $ h_n (x)->display(cases((f (x)-f (x_1))/(x-x_1) "," quad &x!=x_1, g(x_1) "," &x=x_1 )) $  只需证明 ${h_n (x)}$ 一致收敛, 从而得到极限函数的连续性. 

对于 $x!=x_1,$ $ abs(h_m (x)-h_n (x))=&abs((f_m (x)-f_n (x)-(f_m (x_1)-f_n (x_1))))/(abs(x-x_1)) \ =&abs(phi_(m,n) (x)-phi_(m,n) (x_1))/abs(x-x_1)=phi'_(m,n)(xi)=abs(f'_m (xi)-f'_n (xi))<epsilon. $

由 ${f'_n (x)}$ 的一致收敛性可得 ${h_n (x)}$ 在 $[a,b]\\{x_1}$ 的一致收敛性, 由此有 ${h_n (x)}$ 在 $[a,b]$ 一致收敛, 从而极限函数连续, 特别的 $lim h_n (x)$ 在 $x_1$ 处连续：$ g(x_1)=lim_(x->x_1) (f(x)-f(x_1))/(x-x_1) $ 明所欲证. #h(1fr) $square.stroked$
#pagebreak()

*定理 (逐项求导)* $quad$ 设 $u_n (x)$ 在 $[a,b]$ 内可导, 且
- $exists x_0 in  [a,b], sum u_n (x_0)$ 收敛, 
- $sum u'_n (x)$ 在 $[a,b]$ 一致收敛,  
则
- $sum u_n (x)$ 在 $[a,b]$ 上一致收敛, 
- $(sum u_n (x))'=sum u'_n (x).$

*例* $quad display(sum_(n=1)^infinity 1/n^x)$ 在 $(1,+infinity)$ 可微. 

*证明* $quad forall x_0>1,$ 任取 $1<x_1<x_0<x_2,$ $ sum u'_n (x)=-sum_(n=1)^infinity (ln n) /n^x>=-sum ( ln n)/(n^(x_1)), $ 由 $x_1>1$ 知该级数一致收敛, 于是和函数在 $x_1$ 处可导. #h(1fr) $square.stroked$

我们已经知道闭区间上的一致收敛性可以推出可积性, 这一结论对于瑕积分或反常积分也成立吗? 来看下面的例子：

*例* $quad$ 若 $f_n (x)$ 在 $(a,b]$ 有定义, 且 $forall delta>0, f_n in R[a+delta,b], integral_a^b f_n (x)dif x$ 收敛. 若 $f_n (x) arrows f(x), x in (a,b],$ 则

- $display(integral_a^b f(x)dif x)$ 收敛, 

- $display(integral_a^b f(x)dif x=lim_(n->infinity) integral_a^b f_n (x)dif x).$

*证明* $quad forall delta>0, f_n arrows f, x in [a+delta,b] ==> f in R[a+delta,b].$ 由 ${f_n (x)}$ 一致收敛的 Cauchy 准则, \ 取 $epsilon=1, exists N, forall n,m>N,abs(f_n (x)-f_m (x))<1, forall x in (a,b].$ 取 $m=N$ 即有 $abs(f_n (x)-f_N (x))<1.$ 令 $n->infinity, abs(f(x)-f_N (x))<1, forall x in (a,b],$ 即 $f(x)=f_N (x)+(f(x)-f_N (x)).$

$==> display(integral_a^b f(x)dif x)$ 收敛, 且 $ integral_a^b f(x)dif x=&integral_a^b f_N (x)dif x+integral_a^b (f(x)-f_N (x))dif x \ =& integral_a^b f_N (x)dif x + lim_(n->infinity) integral_a^b (f_n (x)-f_N (x))dif x \ =&lim_(n->infinity) integral_a^b f_n (x)dif x. $ #h(1fr) $square.stroked$

*注* $quad$ 函数在 $(a,b]$ 上一致收敛是一较强条件, 可否弱化为内闭一致收敛? 另外瑕积分的结论能否推广到反常积分? 

*例* $quad$ 设 $f_n (x)$ 在 $[a,+infinity)$ 有定义, 且 $forall A>a, f_n in R[a,A],$ 且 $display(integral_a^(+infinity) f_n (x)dif x)$ 收敛.  \ 若 $f_n arrows f, x in [a,+infinity),$ 是否有

- $display(integral_a^(+infinity) f(x)dif x)$ 收敛,  

- $display(integral_a^(+infinity) f(x)dif x=lim_(n->infinity) integral_a^(+infinity) f_n (x)dif x)thick ?$

$a>0$ 时可作换元 $ integral_a^(+infinity) f_n (x)dif x=integral_0^(a^(-1)) (f_n (1/t))/t^2 dif t, $ 然而 $f_n (x) arrows f(x),f_n (1/t) arrows f(1/t)$ 无法推出 $display((f_n (1/t))/t^2 arrows (f(1/t))/t^2).$ 

一个例子是 $f_n (x)=display(1/x^(1+1/n)), x in [1,+infinity), f_n (x)->f(x)=1/x.$ 可以证明 $f_n (x) arrows f(x), x in [1,+infinity).$ 这就说明例子中的第一个猜测是错误的. 

另一个例子是 $ f_n (x)=cases(n/x^3 e^(-n/(2x^2)) "," quad  &x>0, 0 "," &x=0) quad f_n (x)->0, n->infinity. $ 可以证明 $sup f_n (x) ~ C dot n^(-1/2), f_n (x) arrows 0.$

又 $f_n (x)=display((e^(-n/(2x^2)))'),$ 则 $display(integral_0^(+infinity) f_n (x)dif x=lr(e^(-n/(2x^2))|)_0^(+infinity))=1.$ 于是第二个猜测也是错误的. 

原则上来说, 交换求极限顺序需要保证两个极限的一致性, 即两个变元不互相依赖. 

== 第十一章 幂级数

=== $section 1$ 幂级数的收敛域与收敛半径

形如 $display(sum_(n=0)^infinity a_n (x-x_0)^n)$ 的级数称为*幂级数*, 其中 $a_n in RR, x_0 in RR.$

先设 $x_0=0,$ 此时形式为 $display(sum_(n=0)^infinity a_n x^n).$ 分情况讨论此时的收敛域：

*例*

- $display(sum_(n=0)^infinity) n! x^n.$ 在 $x!=0$ 时 $n!x^n->infinity,$ 于是级数发散. 

- $display(sum_(n=0)^infinity x^n).$ 在 $(-1,1)$ 上收敛. 

- $display(sum_(n=0)^infinity x^n/n).$ 收敛域为 $[-1,1), x=-1$ 时为交错级数. 

- $display(sum_(n=0)^infinity x^n/n^2).$ 收敛域为 $[-1,1].$

- $display(sum_(n=0)^infinity x^n/n!).$ 收敛域为 $(-infinity,+infinity).$