import Mathlib

open Set

/-- We treat `harmonic_on` as an abstract predicate for the statement translation. -/
def harmonic_on (f : ℝ × ℝ → ℝ) (U : Set (ℝ × ℝ)) : Prop := True

/-- Maximum principle for harmonic functions on a connected open subset of R^2.

If f is harmonic on a connected open set U and attains a maximum at p ∈ U,
then f is constant on U. -/
theorem maximum_principle_harmonic {U : Set (ℝ × ℝ)} {f : ℝ × ℝ → ℝ}
  (hU : IsOpen U) (hconn : IsConnected U)
  (hf : harmonic_on f U)
  {p : ℝ × ℝ} (hp : p ∈ U) (hmax : ∀ x ∈ U, f x ≤ f p) :
  ∀ x ∈ U, f x = f p := by sorry
