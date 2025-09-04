import Mathlib

/-- Let X and Y be subsets of finite-dimensional Euclidean spaces (Fin m → ℝ and Fin n → ℝ).
    A map f : ↥X → ↥Y is continuous (topologically) iff it is ε-δ continuous as a map between metric spaces. -/
theorem continuous_subtype_iff_epsilon_delta {
  m n : Nat} {X : Set (Fin m → ℝ)} {Y : Set (Fin n → ℝ)} (f : (↥X) → (↥Y)) :
  Continuous f ↔
    (∀ x : ↥X, ∀ ε : ℝ, 0 < ε → ∃ δ : ℝ, 0 < δ ∧ ∀ y : ↥X,
        dist (y : Fin m → ℝ) (x : Fin m → ℝ) < δ → dist (f y : Fin n → ℝ) (f x : Fin n → ℝ) < ε) := by sorry
