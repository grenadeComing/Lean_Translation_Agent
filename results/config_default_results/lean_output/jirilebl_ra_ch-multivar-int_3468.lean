import Mathlib

/-- Maximum principle for harmonic functions on connected open subsets of R^2.

Let U ⊂ R^2 be a connected open set and let f : U → R be harmonic on U
(in the sense of a predicate `IsHarmonicOn f U`). If f attains a maximum
at some p ∈ U, then f is constant on U.
-/
theorem maximum_principle
  {IsHarmonicOn : (ℝ × ℝ → ℝ) → Set (ℝ × ℝ) → Prop}
  {U : Set (ℝ × ℝ)} (hU : IsOpen U) (hconn : IsConnected U)
  {f : (ℝ × ℝ) → ℝ} (hharm : IsHarmonicOn f U) {p : ℝ × ℝ} (hp : p ∈ U)
  (hmax : ∀ x ∈ U, f x ≤ f p) : ∀ x ∈ U, f x = f p := by sorry
