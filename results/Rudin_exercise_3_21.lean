import Mathlib

variable {α : Type*} [MetricSpace α] [CompleteSpace α]

open Set Filter

/-- If {E_n} is a sequence of closed nonempty and bounded sets in a complete metric space X,
    if E_n ⊇ E_{n+1}, and if lim_{n→∞} diam E_n = 0, then ⋂_{n=1}^∞ E_n consists of exactly one point. -/
theorem Rudin_exercise_3_21 (E : ℕ → Set α)
  (h_closed : ∀ n, IsClosed (E n))
  (h_nonempty : ∀ n, (E n).Nonempty)
  (h_bounded : ∀ n, Bounded (E n))
  (h_mono : ∀ n, E (n + 1) ⊆ E n)
  (h_diam : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x y, x ∈ E n → y ∈ E n → dist x y < ε) :
  ∃! z, z ∈ ⋂ n, E n := by sorry
