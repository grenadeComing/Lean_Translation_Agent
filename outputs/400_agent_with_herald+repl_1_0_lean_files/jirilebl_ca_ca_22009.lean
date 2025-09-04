import Mathlib
open Complex
open Set

/-- Let $U \subset \mathbb{C}$ be open and $f \colon U \to \mathbb{C}$ be holomorphic and nonconstant. Then $f$ is an open mapping.
Save it to: jirilebl_ca_ca_22009.lean -/
theorem open_mapping_of_nonconstant_holomorphic {U : Set ℂ} (hU : IsOpen U) {f : ℂ → ℂ} (hf : IsHolomorphicOn f U) (hfn : ¬IsConstantOn U f) : IsOpenMap f := by sorry
