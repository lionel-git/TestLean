#eval 1+1

constant m : nat
#check m


def sum_of_first_n_nat : ℕ → ℕ
| 0 := 0
| (nat.succ n) := (nat.succ n) + sum_of_first_n_nat n


#eval sum_of_first_n_nat 5


theorem closed_eq_sum_of_first_n_nat (n : ℕ) :
    2 * (sum_of_first_n_nat n) = n * (nat.succ n) :=
begin

induction n with d hd,
rw sum_of_first_n_nat,
rw nat.mul_zero,
rw nat.zero_mul,

rw sum_of_first_n_nat,
rw nat.left_distrib,
rw hd,

--rewrites nat.succ n to n + 1:
rw nat.succ_eq_add_one,
--rewrites nat.succ (n + m) to n + nat.succ m (from defn of addition)     
--note rw usually rewrites from left to right over an equality; ← (\l) does right to left
rw ← nat.add_succ,
--rewrites nat.succ 1 to 2 (for clarity)
rw (show nat.succ 1 = 2, by refl),
--multiplies out d + 1
rw left_distrib (d + 1) d 2,
--moving things around with commutativity
rw mul_comm 2 (d + 1),
rw mul_comm d (d + 1),
rw add_comm,



end
