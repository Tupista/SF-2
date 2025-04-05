#import "@preview/cuti:0.3.0": show-cn-fakebold
#show: show-cn-fakebold

=== 1. 交错级数

*定理 (Lebnitz)* $quad$ 设 ${a_n}->0$ 单调减, 则 $display(sum_(i=1)^infinity (-1)^(n-1)a_n)$ 收敛. 

*证明* $quad$ 记 $T_n=display(sum_(k=1)^n (a_(2k-1)-a_(2k))),$ 则 $T_n$ 是一正项级数. 

而且更改求和顺序可以得到 $ T_n=a_1-(a_2-a_3)-dots-(a_(2n-2)-a_(2n-1))-a_(2n)<=a_1, $ 因而 $T_n$ 收敛, 从而 $sum (-1)^(n-1)a_n$ 收敛.  #h(1fr) $square.stroked$

*例* $quad$ 讨论 $display(sum_(n=2)^infinity (-1)^n/(n^p ln^q n))$ 的敛散性. 

*解* $quad$ 先看 $display(sum_(n=2)^infinity 1/(n^p ln^q n)):$ 在 $p>1$ 或 $p=1,q>1$ 时收敛, 其余情形发散. 

再看 $display(sum_(n=2)^infinity (-1)^n/(n^p ln^q n):)$ 在前一正项级数发散的前提下, 在 $p=0,q>0$ 或 $p>0$ 时收敛, 其余情形发散. 

=== 2. Dirichlet 判别法

*定理* $quad$ 考虑级数 $display(sum_(n=1)^infinity a_n b_n),$ 满足

- $sum a_n$ 的部分和有界, 

- ${b_n}$ 单调趋于 $0,$

则 $sum a_n b_n$ 收敛. 

*证明* $quad$ 记 $A_n:=display(sum_(k=1)^n a_k), exists M>0 "s.t." forall n>=1, abs(A_n)<=M.$ \ $forall epsilon>0,$ 来找 $N "s.t." forall n>N,forall p>0,$ 都有 $display(abs(sum_(k=n+1)^(n+p) a_k b_k)<epsilon).$

$ abs(sum_(k=n+1)^(n+p) a_k b_k) &= abs(sum_(k=n+1)^(n+p) (A_k-A_(k-1)) b_k) \ &= abs(sum_(k=n+1)^(n+p) A_k b_k - sum_(k=n)^(n+p-1) A_k b_(k+1)) \ &<= abs(sum_(k=n+1)^(n+p-1) A_k (b_k-b_(k+1))) + abs(A_(n+p)b_(n+p)) + abs(A_n b_(n+1)) \ &<= M (sum_(k=n+1)^(n+p-1) abs(b_k-b_(k+1))+abs(b_(n+p))+abs(b_(n+1))) \ &= M(abs(b_(n+1)-b_(n+p-1))+abs(b_(n+p))+abs(b_(n+1))) \ &<= 2M(abs(b_(n+1))+abs(b_(n+p))) < epsilon, $ 由 $b_n$ 单调趋于 $0, exists N, forall n>N, abs(b_n)<display(epsilon/(4M))$ 即可.  #h(1fr) $square.stroked$

*定理 (Abel)* $quad$ 设 ${a_n},{b_n}$ 满足

- $sum a_n$ 收敛,  

- ${b_n}$ 单调有界, 

则 $sum a_n b_n$ 收敛.  

*证明* $quad$ 设 $b_n -> b.$ $ sum a_n b_n = sum a_n (b+(b_n-b))=b sum a_n+sum a_n (b_n-b). $ 由 Dirichlet 定理知后一级数收敛.  #h(1fr) $square.stroked$

事实上, Lebnitz 定理可视为 Dirichlet 定理的特殊情形: $(-1)^(n-1)$ 部分和有界. 

*例* $quad$ 讨论交错级数 $display(sum_(n=1)^infinity (-1)^n/n^(alpha+1/n)), quad alpha>0.$

*解* $quad display(sum_(n=1)^infinity (-1)^alpha/n^alpha dot 1/n^(1/n)),$ 其中 $display(sum_(n=1)^infinity (-1)^alpha/n^alpha)$ 收敛, $display(1/n^(1/n))$ 单调增且收敛于 $1.$ 由 Abel 定理原级数收敛.  \ #h(1fr) $square.stroked$

*例 (Fourier)* $quad$ 设 ${a_n}$ 单调趋于 $0,$ 则

- 当 $sum a_n$ 收敛时, $sum a_n sin n x, sum a_n cos n x$ 绝对收敛, 

- 当 $sum a_n$ 发散时, 当 $x!=k pi$ 时 $sum a_n sin n x$ 条件收敛, $x!=2k pi$ 时 $sum a_n cos n x$ 条件收敛. 

*证明* $quad$ 不妨设 $a_n>0$.

- $abs(a_n sin n x), abs(a_n cos n x)<=a_n.$

- $ &2sin x/2 (sin x+sin 2x+dots+sin n x) \ = &(cos x/2 -cos (3x)/2+cos (3x)/2-cos (5x)/2+dots+cos (2n-1)/2 x - cos (2n+1)/2 x) \ =& cos x/2 - cos (2n+1)/2 x. $ $display(abs(sum_(k=1)^n sin k x)<=abs((cos x/2-cos (2n+1)/2 x)/(2 sin x/2))<=abs(1/(sin x/2))), quad x!=2k pi.$

 由 Dirichlet 定理可知 $display(sum_(n=1)^infinity a_n sin n x)$ 收敛, $forall x in RR.$ 

 而 $abs(a_n sin n x)>=a_n sin^2 n x=display((a_n-a_n cos 2n x)/2),$ 
 
 其中 $sum a_n cos 2n x$ 在 $2x!=2k pi$ 时收敛, 则此时 $sum abs(a_n sin n x)$ 发散, 结合 $sum a_n sin n x$ 收敛即得 $sum a_n sin n x$ 条件收敛. 

 对于 $cos$ 的情形, $ &2 sin x/2 (cos x + dots+ cos n x) =sin (2n+1)/2 x-sin x/2, $ $display(abs(sum_(k=1)^n cos k x)=abs((sin (2n+1)/2 x-sin x/2)/(2 sin x/2))<=abs(1/(sin x/2))), quad x!=2k pi.$

 由 Dirichlet 定理可知 $display(sum_(n=1)^infinity a_n cos n x)$ 收敛, $forall x!=2k pi.$

 而 $abs(a_n cos n x)<=a_n cos^2 n x = display((a_n+a_n cos 2n x)/2),$

 和 $sin$ 相同的论述给出 $x!=k pi$ 时 $sum a_n cos n x$ 条件收敛. 

 对于 $x=(2k-1)pi$ 的情形, $sum a_n cos (2k-1) n pi=sum (-1)^n a_n$ 条件收敛. #h(1fr) $square.stroked$

== $section 4$ 数项级数的性质

=== 1. 结合律

*定理* $quad$ 设 $sum a_n$ 收敛, 则 $sum a_n$ 任意加括号后得到的级数都收敛. 

*证明* $quad$ 设 $sum b_n$ 是 $sum a_n$ 加括号后得到的级数, 其中 $b_k=display(sum_(i=n_(k-1)+1)^(n_k) a_i) quad (n_k>n_(k-1)).$

记 $S_n=display(sum_(k=1)^n a_k), quad T_n=display(sum_(k=1)^n b_k).$ 则 ${T_n}$ 是 ${S_n}$ 的一个子序列, 必然收敛到同一极限. #h(1fr) $square.stroked$

*注* $quad$ 当 $sum a_n$ 为正项级数时, $sum a_n$ 以某种方式加括号后的级数收敛即可推出 $sum a_n$ 收敛. 

=== 2. 交换律

称 $NN={1,2,dots,}$ 上的一个双射 $f$ 为 $NN$ 的一个*重排* $f: NN attach(<-->, t: 1":"1)NN.$

*定理* $quad$ 设 $sum a_n$ 收敛, $f$ 是 $NN$ 的一个重排且 $exists M>0, forall n, abs(f(n)-n)<=M,$ 则 $sum a_(f(n))$ 收敛. 

*证明* $quad$ 由 $sum a_n$ 收敛, 故 $display(lim_(n->infinity) a_n=0),$ 从而 $ lim_(n->infinity) sum_(j=-M)^M a_(n+j)=0. $ 记 $S_n,T_n$ 分别为 $a_n,a_(f(n))$ 的部分和, 则 $ abs(S_n-T_n)<=sum_(j=-M)^M abs(a_(n+j)), $ 这是因为下标 $<n-M$ 的项同时出现在 $S_n,T_n$ 中, 而下标 $>n+M$ 的项不在任一部分和中.  \ #h(1fr) $square.stroked$