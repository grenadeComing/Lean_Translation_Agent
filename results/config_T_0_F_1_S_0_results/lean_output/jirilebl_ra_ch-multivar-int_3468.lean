import Mathlib

/--
We state the maximum principle for harmonic functions in R^2.
U is a connected open subset of R^2 and f is harmonic on U.
If f attains a maximum at some p ∈ U, then f is constant on U.

We treat `IsHarmonicOn` as an abstract predicate meaning "f is harmonic on U"
(i.e. twice continuously differentiable and satisfying f_xx + f_yy = 0 on U).
-/

theorem max_principle_harmonic_on_connected
  {IsHarmonicOn : (ℝ × ℝ → ℝ) → Set (ℝ × ℝ) → Prop}
  {U : Set (ℝ × ℝ)} {f : ℝ × ℝ → ℝ}
  (hU : IsOpen U) (hconn : IsConnected U) (hharm : IsHarmonicOn f U)
  {p : ℝ × ℝ} (hp : p ∈ U) (hmax : ∀ x ∈ U, f x ≤ f p) :
  ∀ x ∈ U, f x = f p := by sorry
