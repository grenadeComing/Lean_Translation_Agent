import Mathlib

/-!
Formal statement (without proof) that the generating function for integer partitions equals
the infinite product ∏_{k≥1} 1/(1 - X^k), expressed coefficient-wise.
We work with formal power series over ℤ. For each k ≥ 1 we set s k = ∑_{j≥0} X^{k*j}
by declaring its coefficients. Let G m be the finite product ∏_{k=1}^m s k. Define p n as
the coefficient of X^n in G (n+1). Then the coefficient of X^n in the power series
∑_{m≥0} p m X^m equals the coefficient of X^n in G (n+1).
The proof is omitted (":= by sorry").
-/

open Finset

noncomputable def s (k : ℕ) : PowerSeries ℤ :=
  PowerSeries.mk fun n => if k ∣ n then (1 : ℤ) else 0

noncomputable def G (m : ℕ) : PowerSeries ℤ :=
  (range m).prod fun i => s (i + 1)

noncomputable def p (n : ℕ) : ℤ :=
  PowerSeries.coeff ℤ n (G (n + 1))

theorem partition_generating_function_coeff (n : ℕ) :
  PowerSeries.coeff ℤ n (PowerSeries.mk fun m => p m) = PowerSeries.coeff ℤ n (G (n + 1)) := by sorry
