import Mathlib

/-- Baire category theorem for complete metric spaces (Rudin Ex. 3.22).
Suppose X is a nonempty complete metric space, and G_n is a sequence of dense open sets.
Then the intersection ⋂_{n=1}^∞ G_n is nonempty. -/
theorem baire_category_theorem {X : Type _} [MetricSpace X] [CompleteSpace X]
  (hne : Nonempty X) (G : ℕ → Set X) (hG : ∀ n, IsOpen (G n) ∧ Dense (G n)) :
  (⋂ n, G n) ≠ (∅ : Set X) := by sorry
