import Mathlib
open Set Metric TopologicalSpace Filter
open Topology

/-- Prove that the one point compactification of \mathbb{R}^{n} is homeomorphic to the sphere S^{n}. Save it to: benmckay_top_continuity_232.lean -/
theorem onePointCompactification_homeomorphic_sphere (n : ℕ) :
    OnePointCompactification (Fin n → ℝ) ≃ₜ S^n := by sorry