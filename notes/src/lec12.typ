#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

== $section$ D'Alambert 与 Cauchy 判别法

*定理 (Cauchy, 根式)* $quad$ 设 $sum a_n$ 为正项级数, $r=limits(overline(lim))_(n->infinity) root(n,a_n).$

- 当 $r<1$ 时, $sum a_n$ 收敛. 
- 当 $r>1$ 时, $sum a_n$ 发散. 

*证明* $quad$

- 取 $q in (r,1),$ 从而 $exists N, forall n>N,root(n,a_n)<q,$ 即 $a_n<q^n.$ 由 $sum q^n$ 收敛即知 $sum a_n$ 收敛.  

- 取 $q in (1,r), exists {n_k}->infinity "s.t." limits(lim)_(k->infinity) root(n_k,a_(n_k))=r.$ 

 从而 $exists N,forall k>N,root(n_k,a_(n_k))>q,$ 即 $a_(n_k) > q^(n_k)>q^k.$ 由 $sum q^n$ 发散即知 $sum a_n$ 发散. 

*例* $quad$ 设 $0<a<b<1, a_(2n)=b^n, a_(2n-1)=a^n.$

$overline(lim) root(n,a_n) = sqrt(b)<1$ 收敛. 而  $limits(overline(lim))_(n->infinity) display(a_(n+1)/a_n) = infinity,limits(underline(lim))_(n->infinity) display(a_(n+1)/a_n) = 0,$ 因此无法用 D'Alambert 判别法判断级数是否收敛.

== Raabe 判别法

在比较 $display(sum_(k=1)^infinity a_n)$ 和 $display(sum_(k=1)^infinity 1/n^p (p>0))$ 时考察 $display(a_n/a_(n+1))$ 的取值, 可以观察到如下的结论:

*定理 (Raabe)* $quad$ 设有正项级数 $sum a_n.$

- 若 $r=limits(underline(lim))_(n->infinity) n display((a_n/a_(n+1)-1))>1,$ 则 $sum a_n$ 收敛.  

- 若 $r'=limits(overline(lim))_(n->infinity) n display((a_n/a_(n+1)-1))<1,$ 则 $sum a_n$ 发散.  

*证明* $quad$ 
- 取 $q in (1,r), exists N, forall n>=N, n display((a_n/a_(n+1)-1))>q, display(a_n/a_(n+1)>1+q/n.)$

 取定 $p in (1,p),$ 则当 $N$ 充分大时, 当 $n>=N$ 时 $ display(a_(n+1)/a_n= 1+q/n>(1+1/n)^p=b_(n+1)/b_n), quad [display((1+1/n)^p=1+p/n+o(1/n))] $ 其中 $b_n=display(1/n^p.)$ 连乘可得 $display(a_(n+1)/a_N) < display(b_(n+1)/b_N),$  从而由 $sum b_n$ 收敛可得 $sum a_n$ 收敛. 

- 取 $q in (r',1), exists N, forall n>=N, n display((a_n/a_(n+1)-1))<q, display(a_n/a_(n+1))<1+display(q/n).$

 取定 $p' in (q',1), display(a_n/a_(n+1)<1+q/n<(1+1/n)^p=b_n/b_(n+1))(n->infinity) ==> sum a_n$ 发散. #h(1fr) $square.stroked$ 

*例* $quad$ 判定 $display(sum_(n=1)^infinity n^(n-2)/(e^n n!))$ 的敛散性.  

*解* $quad$ $display(a_n/a_(n+1)= n^(n-2)/(e^n n!) dot (e^(n+1)(n+1)!)/(n+1)^(n-1)=e/(1+1/n)^(n-1)).$

$ display(ln a_n/a_(n+1)&=1-(n-1)ln(1+1/n)=1-(n-1)(1/n -1/(2n^2)+o(1/n^2))\ &=1/n+(n-1)/(2n^2)+o(1/n))~3/(2n)+o(1/n). $
$display(n ln a_n/a_(n+1)->3/2), display((a_n/a_(n+1)-1)->3/2(n->infinity)) ==>$ 原级数收敛. 

*例* $quad$ 设 $sum a_n$ 为正项级数, $xi_n>0.$ 证明若 $ limits(underline(lim))_(n->infinity) display((xi_n a_n/(a_(n+1)) -xi_(n+1)))>0 $ 则 $sum a_n$ 收敛. 

*证明* $quad exists c>0, exists N, forall n>N, xi_n display(a_n/a_(n+1)) -xi_(n+1)>c, $ 即 $ 0<c a_(n+1) <xi_n a_n-xi_(n+1)a_(n+1). $ 从而 $xi_n a_n$ 严格单调减, 因而有极限. $ display(sum_(k=1)^n (xi_k a_k-xi_(k+1)a_(k+1))=xi_1 a_1-xi_(n+1)a_(n+1)<xi_1 a_1), $ 由比较判别法 $sum c a_n$ 收敛 $==> sum a_n$ 收敛.  #h(1fr) $square.stroked$

== Cauchy 积分判别法

*定理 (积分判别法)* $quad$ 设 $f:[1,+infinity)->RR, f(x)$ 单调减. 令 $a_n=f(n),$ 则 $sum a_n$ 与 $display(integral_1^(+infinity) f(x)dif x)$ 同时敛散. 

*证明* $quad$ $ integral_1^(n+1)f(x)dif x=sum_(k=1)^n integral_k^(k+1)f(x)dif x, $ 而 $ a_(k+1)<=integral_k^(k+1)f(x)dif x<=a_k,\ a_2+dots+a_(n+1)<=integral_1^(n+1)f(x)dif x<=a_1+dots+a_n=S_n. $ 若 $sum a_n$ 收敛, 则 ${S_n}_(n>=1)$ 有界, 从而 ${display(integral_1^(n+1)f(x)dif x)}_(n>=1)$ 单调有界. 故 $display(integral_1^X)f(x)dif x$ 作为 $X$ 的函数有界, 从而 $display(integral_1^(+infinity)f(x)dif x)$ 收敛, 反之亦然. #h(1fr) $square.stroked$

*例* $quad$ 设 $sum a_n$ 为正项级数且收敛. 记 $r_n = display(sum_(k=n)^infinity a_k),$ 则当 $p>1$ 时, $display(sum_(n=1)^infinity a_n/r_n^p)$ 收敛. 

*证明* $quad$ $display(a_n/r_n^p = (r_n-r_(n+1))/r_n^p<=integral_(r_(n+1))^(r_n)(dif x)/x^p), quad display(sum_(k=1)^n a_k/r_k^p <= integral_(r_(n+1))^(r_1)<integral_0^(r_1)(dif x)/x^p ==> sum a_n/r_n^p)$ 收敛. #h(1fr) $square.stroked$

*注* $quad {display(a_n/r_n^p)}$ 对任意收敛的正项级数 $sum a_n$ 给出了一个同样收敛的正项级数 $sum b_n$ 满足 $ limits(lim)_(n->infinity) b_n/a_n = infinity. $

定义 $ ell^1={(a_1,dots,a_n,dots) | sum abs(a_n) < +infinity}, \ ell^2 = {(a_1,dots,a_n,dots) | sum a_n^2 < +infinity}. $

== $section$ 任意项级数

*定理* $quad$ 设 $sum a_n$ 为任意项级数, 且满足
- $limits(lim)_(n->infinity) a_n = 0,$

- $exists N>0 "s.t."$ 在 $sum a_n$ 中加上一些括号 (括号里的元素个数均不超过 $N$) 后得到的级数收敛, 

则 $sum a_n$ 收敛. 

*证明* $quad$ 记 $S_n=display(sum_(k=1)^n a_k),$ 再记  $sum b_k$ 为打括号后的级数, 其前 $k$ 项部分和记为 $S_(n_k), n_(k+1)-n_k <= N.$ 于是由 (2) 知 $limits(lim)_(n->infinity) S_(n_k)$ 收敛. 又 $ forall n_(k-1)<=n<=n_k, quad S_n-S_(n_(k-1))=underbracket(a_(n_(k-1)+1)+dots+a_n, <=N "项"), $ 由 $limits(lim)_(n->infinity) a_n =0$ 有 $lim S_n=lim S_(n_k).$ #h(1fr) $square.stroked$

设 $sum a_n$ 为正项级数, 则称 $display(sum_(k=1)^infinity) (-1)^(n-1)a_n$ 为*交错级数*. 

*定理 (Lebnitz)* $quad$ 设 $a_n$ 单调减且趋向于 $0,$ 则 $display(sum_(n=1)^infinity (-1)^(n-1)a_n)$ 收敛. 