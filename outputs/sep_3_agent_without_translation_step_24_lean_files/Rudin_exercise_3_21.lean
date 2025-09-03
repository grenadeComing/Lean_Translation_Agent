import Mathlib

open Set

/-- Rudin Ex. 3.21: If (E_n) is a nested sequence of nonempty closed bounded sets in a complete metric
space X with diam(E_n) → 0, then ⋂ E_n is a singleton. -/
theorem Rudin_ex_3_21 {X : Type*} [MetricSpace X] [CompleteSpace X]
  (E : ℕ → Set X)
  (hclosed : ∀ n, IsClosed (E n))
  (hnonempty : ∀ n, (E n).Nonempty)
  (hmono : ∀ n, E n ⊇ E (n+1))
  (hdiam : ∀ ε > 0, ∃ N, ∀ n ≥ N, ∀ x y, x ∈ E n → y ∈ E n → dist x y ≤ ε) :
  ∃! x, (⋂ n, E n) = {x} := by sorry
