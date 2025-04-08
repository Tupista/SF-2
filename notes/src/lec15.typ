#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

== $section 3$ 级数的乘法

已经定义了 $sum a_n$ 和 $sum b_n$ 的乘积矩阵. 

*定理* $quad$ 设 $sum a_n,sum b_n$ 均绝对收敛, 则 $sum a_n$ 与 $sum b_n$ 的乘积矩阵任一排列构成的级数都绝对收敛. , 并且和为 $(sum a_n)(sum b_n).$

*证明* $quad$ 已经证明了绝对收敛性. 来证和为 $(sum a_n)(sum b_n).$ 由于任一排列构成的级数都绝对收敛, 只要求其中一种排列加括号之后的级数之和. 因而 $ sum_(n=1)^infinity a_(k n)b_(j n)=sum_(n=1)^infinity d_n=(sum_(n=1)^infinity a_n)(sum_(n=1)^infinity b_n). $

*例* $quad alpha>0,$ 考虑级数 $display(sum_(n=1)^infinity (-1)^(n-1)/n^alpha)$ 自乘的 Cauchy 乘积. 

*解* $quad c_n=display(sum_(k=1)^n a_k a_(n+1-k)=sum_(k=1)^n (-1)^(k-1)/k^alpha dot (-1)^(n-k)/(n-k+1)^alpha=(-1)^(n-1)sum_(k=1)^n 1/(k dot (n-k+1))^alpha).$

- $alpha<=display(1/2)$ 时 $ abs(c_n)>=sum_(k=1)^n 1/sqrt(k(n+1-k))>= (2n)/(n+1)->2. $ 因此 $sum c_n$ 发散.  #h(1fr)

- $alpha=1$ 时 $ c_n=(-1)^(n-1)/(n+1) sum_(k=1)^n (1/k+1/(n-k+1))=(2 dot (-1)^(n-1))/(n+1) sum_(k=1)^n 1/k, $ 事实上此时 $sum c_n$ 收敛, 且收敛到 $(sum a_n)^2=(ln 2)^2.$

*定理 (Mertens)* $quad$ 设 $sum a_n$ 绝对收敛, $sum b_n$ 收敛, 则 Cauchy 乘积收敛到 $(sum a_n)(sum b_n).$

*证明* $quad$ 记 $A_n,B_n,C_n$ 分别表示 $a_n,b_n,c_n$ 的部分和, 且 $A_n->A,B_n->B.$ 要证 $C_n->A B.$ $ C_n-A B&=C_n-A_n B+A_n B-A B, \ C_n=sum_(k=1)^n c_k&=sum_(k=1)^n sum_(i=1)^k a_i b_(k-i+1) =sum_(k=1)^n a_k B_(n-k+1), \ C_n-A B&=sum_(k=1)^n a_i (B_(n-k+1)-B). $ 考虑在 $k$ 较小时用 $B_n->B$ 控制, $k$ 较大时用 $a_n->0$ 控制. 

记 $M=sup{sum_(n=1)^infinity abs(a_n),abs(B_i-B)}.$ $forall epsilon>0, exists N "s.t." forall n>N,abs(B_n-B)<epsilon.$ 

另外由 $a_n->0, exists N', forall k>=N', abs(a_k)<display(epsilon/N).$ 当 $n-N+1>=N'$ 时  $ a_1(B_n-B)+dots+a_(n-N)(B_(N+1)-B)<epsilon sum_(k=1)^(n-N)a_n, \ a_(n-N+1)(B_N-B)+dots+a_n (B_1-B)<epsilon/N dot N dot 2M. $ 因而 $display(lim_(n->infinity) (C_n-A_n B)=0.)$ #h(1fr) $square.stroked$

== $section 5$ 无穷乘积

设 $a_n in RR, n>=1.$ $a_1 dot a_2 dot dots=:display(product_(n=1)^infinity a_n.)$ 类似的有前 $n$ 项部分积 $P_n=display(product_(k=1)^n a_k).$

*定义* $quad$ 设 ${a_n}$ 为一序列, $P_n$ 为其部分积. 若 $display(lim_(n->infinity) P_n=a!=0),$ 则称无穷乘积收敛, \ 且记 $a=display(product_(n=1)^infinity a_n.)$ 若 $lim P_n=0$ 或 $lim P_n$ 不存在, 则称无穷乘积发散. 

*定理* $quad$ 若 $display(product_(n=1)^infinity) a_n$ 收敛, 则 $display(lim_(n->infinity) a_n=1).$

*证明* $quad$ 记 $P_n=display(product_(k=1)^n a_k).$ 令 $P_n->a!=0.$ 由 $P_(n+1)=P_n dot a_(n+1)$ 有 $a_(n+1)=display(P_(n+1)/P_n)->1.$ #h(1fr) $square.stroked$

下面考虑无穷乘积的形式为 $display(product_(n=1)^infinity (1+a_n)), abs(a_n)<1.$

*定理* $quad display(product (1+a_n))$ 收敛 $<==> sum ln(1+a_n)$ 收敛. 

*证明* $quad$ 令 $P_n,S_n$ 分别为部分积/和, 则 $S_n=ln P_n, thick P_n=e^(S_n).$ 由指数函数和对数函数的连续性知两者敛散性一致. #h(1fr) $square.stroked$

*推论* $quad$ 若 $a_n>0, forall n>=1, display(product_(n=1)^infinity (1+a_n))$ 收敛 $<==> sum a_n$ 收敛. 

*证明* $quad$ 若 $a_n->0,$ 则 $display(ln(1+a_n)/a_n)->1 ==> (sum ln(1+a_n) "收敛" <==> sum a_n "收敛").$ #h(1fr) $square.stroked$

*例* 

- $display(product_(n=1)^infinity (1+1/n^p) thick (p>0))$ 收敛 $<==> display(sum 1/n^p)$ 收敛.

- $a_1=display(sqrt(1/2)),a_(n+1)=display(sqrt((1+a_n)/2) ==> a_n=cos pi/2^(n+1)).$ 此时 $ display(product_(k=1)^n a_k)=cos pi/4 dot dots dot cos pi/2^(n+1), \ 2^n sin pi/2^(n+1) product_(k=1)^n a_k=sin pi/2=1 ==>P_n=2^(-n) sin pi/2^(n+1)->pi/2. $

- $display(product_(n=1)^infinity (1-1/(2n)^2))$ 收敛. $ product_(k=1)^n (1-1/(2k)^2)=product_(k=1)^n ((2k-1)(2k+1))/(2k)^2=((2n-1)!!/(2n)!!)^2 dot (2n+1)->2/pi thick ("Wallis"). $

$zeta(s)=display(sum_(n=1)^infinity 1/n^s), s>1.$ (Riemann $zeta$ 函数) $ (1-1/2^s)zeta(s)=sum_(n=1)^infinity 1/n^s-1/2^s sum_(n=1)^infinity 1/n^s=sum_(n=1)^infinity 1/n^s-sum_(n=1)^infinity 1/(2n)^s=sum_(n in M_1) 1/n^s, \ (1-1/3^s)[(1-1/2^s)zeta(s)]=sum_(n in M_1) 1/n^s-sum_(n in M_1) 1/(3n)^s=sum_(n in M_2) 1/n^s. $ 其中 $M_i$ 表示不能被前 $i$ 个质数中的任意一个整除的正整数. 以此类推, $ 0<-zeta(s) product_(k=1)^m (1-1/p_k^s)=sum_(n in M_m) 1/n^s<=1+sum_(n>p_m) 1/n^s, \ sum_(n=1)^infinity 1/n^s=1/(product_(n=1)^infinity (1-1/p_n^k)). $

上述无穷乘积在 $s<=1$ 时发散, 在 $s>1$ 时收敛, 从而 $display(sum_(n=1)^infinity 1/p_n^s)$ 也是如此. \ $p_n>=n,$ "由此可得" $p_n<n ln n ==> display(p_n/n~ln n).$

= 第十章 函数项序列与函数项级数

== $section 1$ 基本概念

设有一列函数 ${f_n (x)}_(n=1)^infinity,$ 在 $x in I_0 subset RR$ 上有定义. 取定 $x_0 in I_0, {f_n (x_0)}_(n=1)^infinity$ 为一序列. 若 $display(lim_(n->infinity) f_n (x_0))$ 收敛, 则称 $x_0$ 为 ${f_n (x)}$ 的*收敛点*. 记 $I$ 为 ${f_n (x)}_(n>=1)$ 的全体收敛点构成的集合, 称为*收敛域*. $forall x in I,$ 记 $f(x)=display(lim_(n->infinity) f_n (x)),$ 称为*极限函数*. 

类似于部分和, 定义*和函数* $S_n (x)=display(sum_(k=1)^n) f_n (x).$

三个基本问题: $f_n$ 在 $I$ 上连续/可导/可积, $f$ 是否连续/可导/可积? 另外若保持可导/可积, $f$ 的导函数/积分是否是 $f_n$ 导函数/积分的极限? 

直观来说, 这是求极限能否与求导/求积分交换顺序的问题, 或者进一步归结为求极限能否交换顺序的问题.  $ lim_(n->infinity) lim_(Delta x->0) (f_n (x+Delta x)-f_n (x))/(Delta x)= lim_(n->infinity) f'_n (x) attach(=,t:"?") (lim_(n->infinity) f_n)'(x)=lim_(Delta x->0) lim_(n->infinity) (f_n (x+Delta)-f_n (x))/(Delta x), \ lim_(n->infinity) integral f_n (x)dif x attach(=,t:"?")integral (lim_(n->infinity) f_n (x)) dif x. $