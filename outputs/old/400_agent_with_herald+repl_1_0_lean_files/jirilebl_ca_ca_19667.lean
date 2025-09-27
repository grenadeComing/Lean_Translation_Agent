import Mathlib

variable (holomorphic_on : Set Complex → (Complex → Complex) → Prop)

/-- Let U ⊂ ℂ be open and f : U → ℂ be holomorphic. If |f| attains a local maximum at z0 ∈ U,
then f is constant in a neighborhood of z0. -/
theorem max_modulus_local_const {U : Set Complex} {f : Complex → Complex} (hU : IsOpen U)
  (hf : holomorphic_on U f) {z0 : Complex} (hz0 : z0 ∈ U)
  (hmax : ∃ r : ℝ, r > 0 ∧ ∀ z, z ∈ Metric.ball z0 r → ‖f z‖ ≤ ‖f z0‖) :
  ∃ r : ℝ, r > 0 ∧ ∀ z, z ∈ Metric.ball z0 r → f z = f z0 := by sorry
