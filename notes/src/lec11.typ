#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

== 第九章 数项级数

== $section 1$ 数项级数的概念

设有序列 ${a_n}_(n=1)^(+infinity),$ 称表达式 $a_1+a_2+dots+a_n+dots$ 为数项级数, 记为 $display(sum_(n=1)^(+infinity) a_n,)$ 其中 $a_n$ 称为级数的通项, 记 $S_n=a_1+dots+a_n$ 为前 $n$ 项的部分和. 

*定义* $quad$ 设有级数 $display(sum_(n=1)^infinity)a_n.$ 
- 若其前 $n$ 项的部分和序列 ${S_n}_(n=1)^(+infinity)$ 收敛, 则称级数 $display(sum_(n=1)^(+infinity)a_n)$ 收敛. 若 $display(S=lim_(n->infinity)S_n),$ 则记 $S=display(sum_(n=1)^infinity)a_n.$ 
- 相应地若 ${S_n}$ 发散, 则称 $display(sum_(n=1)^infinity)a_n$ 发散. 特别地若 $display(lim_(n->infinity)S_n = infinity),$ 则称 $display(sum_(n=1)^infinity)a_n$ 发散到 $infinity,$ 记为 $display(sum_(n=1)^infinity)a_n=infinity.$

经典的数项级数: 

- *等比级数*: $q in RR, {q^n}_(n=0)^(infinity)$ 是一等比数列. 讨论该数项级数的敛散性: 

 $ S_n=q^0+dots+q^(n-1)=display(cases((1-q^n)/(1-q) "," quad &q!=1, n "," &q=1))thick. $

 - $q=1$ 时 $S_n=n->+infinity$ 发散. 

 - $abs(q)<1$ 时 $display(q^n -> 0 "," thick S_n->1/(1-q))$ 收敛. 

 -  $q=-1$ 时 $display(S_n=(1-(-1)^n)/2)$ 发散.  

 - $abs(q)>1$ 时 $display(q^n->infinity), S_n -> infinity$ 发散. 

*例* $quad$ 求 $display(sum_(n=1)^infinity 1/(n(n+2))).$

*解* $quad$ $S_n=display(sum_(k=1)^n 1/(k(k+2)))=display(1/2 sum_(k=1)^n (1/k - 1/(k+2)))=display(1/2 (1+1/2-1/(n+1)-1/(n+2)))-->display(3/4).$

*例* $quad$ 证明 $display(sum_(n=1)^infinity 1/n! =e.)$

*证明* $quad$ 根据定义 $display(e>(1+1/n)^n=sum_(k=0)^n mat(n;k)1/n^k=sum_(k=0)^n 1/k! (1-1/n)dots(1-(k-1)/n).)$

任意固定 $k$ 并令 $n-->infinity$ 即得
 $ e>=1+1+1/2! + dots + 1/k!, wide forall k>=1. $

从通项公式可以看出
$ (1+1/n)^n < underbracket(1+1+1/2!+dots+1/n!, S_n) <= e, $
利用夹逼定理即知 $display(S_n->e.)$ #h(1fr) $square.stroked$

*基本性质*

- *线性性* $quad$ 若 $sum a_n$ 与 $sum b_n$ 都收敛, 则 $forall alpha,beta in RR, sum(alpha a_n + beta b_n)$ 也收敛, 且 $ sum(alpha a_n + beta b_n) = alpha sum a_n + beta sum b_n. $
 另外当 $alpha!=0$ 时 $sum a_n$ 与 $sum alpha a_n$ 同时收敛或发散. 

- *定理（级数收敛的 Cauchy 准则）* $quad$ $sum a_n$ 收敛 $<==> forall epsilon>0, exists N, forall n>m>N, display(abs(sum_(k=m)^n a_k)<epsilon).$

 - *例* $quad display(sum_(n=1)^infinity 1/n)$ 发散, 称为*调和级数*. 这是因为 $display(sum_(k=n+1)^(2n) 1/k >= n/(2n)=1/2=epsilon_0).$

- *命题* $quad sum a_n$ 收敛 $==> display(lim_(n --> infinity)a_n=0.)$

 $because display(lim_(n-->infinity)a_n = lim_(n-->infinity) (S_n-S_(n-1))=S-S=0.)$ 

 *例* $quad display(sum_(n=1)^infinity n ln(1+1/n))$ 发散, $because display(n ln(1+1/n)=n(1/n+o(1/n))=1+o(1)-->1.)$ 

== $section 2$ 正项级数

若 $sum abs(a_n)$ 收敛, 则称 $sum a_n$ 绝对收敛. 

*定理* $quad$ 若 $sum a_n$ 绝对收敛, 则 $sum a_n$ 收敛.  $because display(abs(sum_(k=m)^n a_k) <= sum_(k=m)^n abs(a_k)<epsilon.)$

若 $a_k>=0,$ 则称 $sum a_n$ 为*正项级数*. 此时
$ S_(n+1)=S_n+a_(n+1)>=S_n. $

*命题* $quad$ 设 $sum a_n$ 为正项级数, 则 $sum a_n$ 收敛 $<==> S_n$ 有界. 

*定理* $quad$ 设 $sum a_n, sum b_n$ 为正项级数, 且 $a_n <= b_n, forall n>=1.$ 则 $sum b_n$ 收敛 $==> sum a_n$ 收敛. 

若 $display(lim_(n-->infinity) a_n/b_n=c>=0),display(cases(
  c=0 "," &sum b_n "收敛" ==> sum a_n "收敛,",
  0<c<infinity"," quad  &"同时敛散,",
  c = infinity "," &sum b_n "发散" ==> sum a_n "发散".,
))$

*例* $quad$ 讨论 $display(sum_(n=1)^infinity 1/n^p thick(p>0))$ 的敛散性. 

- $p=1$ 时 $display(sum 1/n)$ 发散.  

- $0<p<1$ 时 $display(1/n^p>1/n), display(sum 1/n)$ 发散 $==> display(sum 1/n^p)$ 发散.  

- $p>1$ 时 
 $ S_(2^p-1) &= 1 + (1/2^p+1/3^p) +dots+(1/((2^(p-1))^p)+dots+1/((2^p-1)^p)) \
 &<=1+2/(2^p)+dots+(2^(p-1))/((2^(p-1))^p)<=1/(1-q), $
 其中 $q=display(1/2^(p-1))<1.$ 故此时正项级数收敛. 

*例* $quad display(sum_(n=1)^infinity ln cos pi/n).$

其中 $ display(ln cos pi/n ~ cos pi/n -1 ~ -1/2 pi^2/n^2), $ 即 $display(lim (-ln cos pi/n)/(1/2 pi^2/n^2))=1.$ 由 $display(sum 1/n^2)$ 收敛可知 $display(sum ln cos pi/n)$ 收敛. 

*例* $quad display(sum_(n=1)^infinity (1-((n-1)/(n+1))^k)^p). $

其中
$ (1-((n-1)/(n+1))^k)^p &= (1-(1-2/(n+1))^k)^p \
&=(1-(1-(2k)/(n+1)+o(1/n)))^p \
&=((2k)/(n+1))^p+o(1/n^p).  $
于是归结为讨论 $display(sum 1/n^p)$ 的敛散性. 

*例* $quad display(sum_(n=1)^infinity n^(n-2)/(e^n n!).)$ 这里可以利用 Stirling 公式 $n! ~ display(sqrt(2 pi n)(n/e)^n).$

*例* $quad$ 设 $a_n in (0,1),$ 且 $sum n a_n$ 收敛. 证明: $display(sum_(n=1)^infinity a_n ln a_n)$ 收敛.  

观察两个级数, 猜测要比较 $n$ 和 $-ln a_n,$ 即验证 $a_n ~ e^(-n).$
$ sum -a_n ln a_n &= sum_(a_n >= e^(-n)) a_n (-ln a_n) + sum_(a_n<e^(-n)) - a_n ln a_n \
&<= sum_(a_n >=e^(-n)) n a_n + sum_(a_n < e^(-n)) -a_n ln a_n,  $
其中
$ sum_(a_n<e^(-n)) - a_n ln a_n &= sum_(a_n<e^(-n)) sqrt(a_n)sqrt(a_n)(-ln a_n)\
&<= sum_(a_n<e^(-n))e^(-n/2)(-sqrt(a_n)ln a_n) quad (x^p ln x-->0) $
两个求和式均收敛. 

下面介绍两个正项级数敛散性的判别法: 

*定理 (D'Alambert) * $quad$ 设有正项级数 $sum a_n thick (a_n>=0),$

- $r=display(overline(lim) a_(n+1)/a_n) < 1$ 时, $sum a_n$ 收敛.  

- $r'=display(underline(lim) a_(n+1)/a_n) > 1$ 时, $sum a_n$ 发散. 

*证明* $quad$ 取 $r_1 in (r,1),$ 则 $exists N, forall n>=N, display(a_(n+1)/a_n)<=r_1.$ 此时 $display(a_(n+1)/a_N<=r_1^(N-n+1))$, 即 $a_(n+1)<=r_1^(N-n+1) a_N.$ 由比较判别法知 $sum a_n$ 收敛. $r'>1$ 时的证明几乎一致. #h(1fr) $square.stroked$