import Mathlib

/-
Let ρ_θ : ℝ^2 → ℝ^2 be defined by ρ_θ(x,y) = (x cos θ - y sin θ, x sin θ + y cos θ).
We state that this map is the rotation of ℝ^2 through θ radians: it has the
expected coordinate formula and preserves the Euclidean norm.
-/

noncomputable def rho (θ : ℝ) : ℝ × ℝ → ℝ × ℝ := fun p => (p.1 * Real.cos θ - p.2 * Real.sin θ,
                                                               p.1 * Real.sin θ + p.2 * Real.cos θ)

theorem rho_is_rotation (θ : ℝ) (p : ℝ × ℝ) :
  (rho θ p).1 = p.1 * Real.cos θ - p.2 * Real.sin θ ∧
  (rho θ p).2 = p.1 * Real.sin θ + p.2 * Real.cos θ ∧
  (rho θ p).1 ^ 2 + (rho θ p).2 ^ 2 = p.1 ^ 2 + p.2 ^ 2 := by sorry
