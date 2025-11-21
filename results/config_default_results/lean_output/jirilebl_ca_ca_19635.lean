import Mathlib

/-!
Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. Suppose f is not constant.
Show that the set { z ∈ U : f'(z)=0 } is discrete in U.
-/

theorem jirilebl_ca_ca_19635 {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ}
  (hf : AnalyticOn ℂ f U) (hne : ¬ ∃ c : ℂ, ∀ z ∈ U, f z = c) :
  ∀ z ∈ U, deriv f z = 0 → ∃ r : ℝ, r > 0 ∧ (∀ w ∈ U, ‖w - z‖ < r → deriv f w = 0 → w = z) := by sorry
