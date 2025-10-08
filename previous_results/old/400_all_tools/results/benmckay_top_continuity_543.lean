import Mathlib

noncomputable def E (n : ℕ) := Fin n → ℝ
noncomputable def E' (n : ℕ) := Fin (n + 1) → ℝ

/-- radial function r(x) = sqrt(sum_i x_i^2) on Fin n → ℝ -/
noncomputable def r {n : ℕ} (x : E n) : ℝ :=
  Real.sqrt (Finset.univ.sum fun i => (x i) ^ 2)

/-- There exists a map f : E → E' such that f(0) = (1,0,...,0),
    f sends every x with r x = 1 to (-1,0,...,0), and f is injective on {x | r x < 1}.
    The proof / explicit formula is omitted (by sorry). -/
theorem benmckay_top_continuity_543 {n : ℕ} :
  ∃ f : E n → E' n,
    (f (fun _ => 0) = Fin.cons (1 : ℝ) fun _ => 0) ∧
    (∀ x : E n, r (x : E n) = 1 → f x = Fin.cons (-1 : ℝ) fun _ => 0) ∧
    Set.InjOn (f : E n → E' n) {x : E n | r x < 1} := by
  sorry
