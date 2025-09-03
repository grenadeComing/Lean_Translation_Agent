import Mathlib

variable {X : Type*} [MetricSpace X] [CompleteSpace X]

/-- Rudin Ex. 3.21: If {E_n} is a sequence of closed nonempty and bounded sets in a complete metric
    space X, with E_n ⊇ E_{n+1} for all n, and diam E_n → 0, then ⋂_{n=1}^∞ E_n consists of
    exactly one point. -/
theorem Rudin_exercise_3_21 (E : ℕ → Set X)
  (h_closed : ∀ n, IsClosed (E n))
  (h_nonempty : ∀ n, (E n).Nonempty)
  (h_mono : ∀ n, E n ⊇ E (n+1))
  (h_bdd : ∀ n, ∃ (x0 : X) (R : ℝ), ∀ y ∈ E n, dist x0 y ≤ R)
  (h_diam : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x y, x ∈ E n → y ∈ E n → dist x y < ε) :
  ∃! x : X, x ∈ ⋂ n, E n := by sorry
