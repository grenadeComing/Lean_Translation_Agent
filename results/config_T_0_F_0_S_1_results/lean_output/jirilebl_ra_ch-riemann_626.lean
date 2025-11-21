import Mathlib

/-!
Statement: Suppose f : [a,b] → ℝ is Riemann integrable. Then for every ε > 0 there exists a partition
P = {x_0, ..., x_n} of [a,b] such that for every choice of tags c_k ∈ [x_{k-1}, x_k] we have
|∫_a^b f - ∑_{k=1}^n f(c_k) Δx_k| < ε.

The lemma below formulates this in a style compatible with Mathlib4: we assume Riemann integrability
on the closed interval `Icc a b` and produce a finite ordered family of partition points (a function
`x : Fin (n+1) → ℝ` with `StrictMono x`) with the required approximation property for all choices
of tags `c : Fin n → ℝ` with `c k ∈ Icc (x k) (x (k+1))`.
-/

variable {a b : ℝ} {f : ℝ → ℝ}

theorem exists_partition_uniform_for_riemann_sums (h : RiemannIntegrableOn f (Icc a b)) :
  ∀ ε : ℝ, 0 < ε → ∃ (n : ℕ) (x : Fin (n+1) → ℝ) (hx0 : x 0 = a) (hxl : x (Fin.last n) = b) (hmono : StrictMono x),
    ∀ (c : Fin n → ℝ), (∀ k : Fin n, c k ∈ Icc (x k) (x (k+1))) →
      |∫ x in a..b, f x - ∑ k : Fin n, f (c k) * (x (k+1) - x k)| < ε := by sorry
