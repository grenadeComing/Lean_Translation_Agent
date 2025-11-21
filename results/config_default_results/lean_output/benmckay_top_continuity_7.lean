import Mathlib

/-- Let m n : ℕ, X ⊆ (Fin m → ℝ) and Y ⊆ (Fin n → ℝ). For a map f : ↥X → ↥Y (subtypes with the subspace topologies), state the equivalence: f is continuous (as a map of topological spaces) iff for every x : ↥X and every ε > 0 there exists δ > 0 such that for all x' : ↥X, if dist (x : Fin m → ℝ) (x' : Fin m → ℝ) < δ then dist (f x : Fin n → ℝ) (f x' : Fin n → ℝ) < ε. End the Lean statement with := by sorry. -/
theorem continuous_subtype_iff_epsilon_delta {m n : ℕ} {X : Set (Fin m → ℝ)} {Y : Set (Fin n → ℝ)} (f : ↥X → ↥Y) :
  Continuous f ↔
    ∀ x : ↥X, ∀ ε : ℝ, 0 < ε → ∃ δ : ℝ, 0 < δ ∧ ∀ x' : ↥X, dist (x : Fin m → ℝ) (x' : Fin m → ℝ) < δ → dist (f x : Fin n → ℝ) (f x' : Fin n → ℝ) < ε := by sorry
