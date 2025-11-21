import Mathlib

/-- Let (X, ||·||_X) be a normed vector space and (Y, ||·||_Y) be a normed vector space. Show that if A ∈ L(X,Y) is linear and bounded, then A is continuous. -/
theorem linear_bounded_implies_continuous_jirilebl_2373 {𝕜 : Type*} [NormedField 𝕜] {X Y : Type*}
  [NormedAddCommGroup X] [NormedAddCommGroup Y] [NormedSpace 𝕜 X] [NormedSpace 𝕜 Y]
  (A : X →ₗ[𝕜] Y) (hA : ∃ C, ∀ x : X, ‖A x‖ ≤ C * ‖x‖) :
  Continuous (A : X → Y) := by sorry
