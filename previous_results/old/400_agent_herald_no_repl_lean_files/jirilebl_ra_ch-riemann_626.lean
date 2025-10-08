import Mathlib

/-- Suppose f : [a,b] → ℝ is Riemann integrable. Let ε > 0 be given. Then there exists a partition
P = {x_0, ..., x_n} of [a,b] such that for every choice of points c_k ∈ [x_{k-1}, x_k] one has
|∫_a^b f - ∑_{k=1}^n f(c_k) * (x_k - x_{k-1})| < ε. -/
theorem exists_partition_uniform_riemann {a b : ℝ} {f : ℝ → ℝ}
  (h : Riemann.integrable_on f (Icc a b)) :
  ∀ ε > 0, ∃ (n : ℕ) (xs : Fin (n + 1) → ℝ),
    xs 0 = a ∧ xs ⟨n, Nat.lt_succ_self n⟩ = b ∧ (∀ i : Fin n, xs i ≤ xs (i.succ)) ∧
    (∀ c : Fin n → ℝ, (∀ i, c i ∈ Icc (xs i) (xs (i.succ))) →
      |(∫ x in a..b, f x) - ∑ i : Fin n, f (c i) * (xs (i.succ) - xs i)| < ε) := by sorry
