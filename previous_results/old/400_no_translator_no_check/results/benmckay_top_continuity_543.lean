import Mathlib

open Real

/-- Closed unit ball X in R^n -/
def X (n : ℕ) : Set (Fin n → ℝ) := { x | ‖x‖ ≤ 1 }

/-- Boundary sphere A = ∂X -/
def A (n : ℕ) : Set (Fin n → ℝ) := { x | ‖x‖ = 1 }

/-- Unit sphere Y in R^{n+1}, realized as ℝ × R^n -/
def Y (n : ℕ) : Set (ℝ × (Fin n → ℝ)) := { y | ‖y‖ = 1 }

/-- The map f : X → Y defined in the statement. We give it on all of R^n and will restrict as needed. -/
noncomputable def f_raw {n : ℕ} (x : Fin n → ℝ) : ℝ × (Fin n → ℝ) :=
  if x = 0 then (1, 0) else (Real.cos (π * ‖x‖), Real.sin (π * ‖x‖) • ((‖x‖)⁻¹ • x))

/-- f maps every boundary point (‖x‖ = 1) to (-1,0) and lands in the unit sphere Y. -/
theorem f_maps_boundary_to_neg1 {n : ℕ} (x : Fin n → ℝ) (hx : x ∈ A n) :
  f_raw x ∈ Y n ∧ f_raw x = (-1, 0) := by sorry

/-- f is injective on the interior X \ A: if x,y lie in X\A and f x = f y then x = y. -/
theorem f_injective_on_interior {n : ℕ} :
  ∀ x y : Fin n → ℝ, x ∈ X n \ A n → y ∈ X n \ A n → f_raw x = f_raw y → x = y := by sorry
