import Mathlib

/-!
Baire category theorem (Rudin, Ex. 3.22).
Suppose X is a nonempty complete metric space, and {G_n} is a sequence of dense open sets of X.
Then ⋂_{n} G_n is nonempty.
-/

theorem baire_category_theorem {X : Type _} [MetricSpace X] [CompleteSpace X] [Nonempty X]
  (G : ℕ → Set X) (hopen : ∀ n, IsOpen (G n)) (hdense : ∀ n, Dense (G n)) :
  Set.Nonempty (⋂ n, G n) := by sorry