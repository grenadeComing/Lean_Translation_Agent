import Mathlib

noncomputable def rho (theta : ℝ) : (ℝ × ℝ) → (ℝ × ℝ) :=
  fun ⟨x, y⟩ => (Real.cos theta * x - Real.sin theta * y, Real.sin theta * x + Real.cos theta * y)

/-- Composition of rotations equals rotation by sum of angles -/
theorem rho_comp (θ1 θ2 : ℝ) :
  (rho θ1) ∘ (rho θ2) = rho (θ1 + θ2) := by sorry

/-- Inverse of a rotation: rho θ ∘ rho (-θ) = id and rho (-θ) ∘ rho θ = id -/
theorem rho_inv_left (θ : ℝ) :
  (rho θ) ∘ (rho (-θ)) = id := by sorry

theorem rho_inv_right (θ : ℝ) :
  (rho (-θ)) ∘ (rho θ) = id := by sorry

/-- Rotations commute -/
theorem rho_comm (θ1 θ2 : ℝ) :
  (rho θ1) ∘ (rho θ2) = (rho θ2) ∘ (rho θ1) := by sorry
