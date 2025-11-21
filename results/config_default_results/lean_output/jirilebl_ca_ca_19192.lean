import Mathlib

/-- Let z ∈ ℂ. Claim: |sec z| ≥ |sec (Re z)|. -/
def sec_abs_ge_re : Prop := ∀ z : ℂ, Complex.abs ((1 : ℂ) / Complex.cos z) ≥ Complex.abs ((1 : ℂ) / Complex.cos (z.re : ℂ))
