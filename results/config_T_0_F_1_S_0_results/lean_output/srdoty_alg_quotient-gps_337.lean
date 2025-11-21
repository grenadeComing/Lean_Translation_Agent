import Mathlib

open Matrix

theorem srdoty_alg_quotient_gps_337 (n : Nat) [DecidableEq (Fin n)] [Fintype (Fin n)] :
  (let M := Matrix (Fin n) (Fin n) ℝ in
   let G := Units M in
   let SL : Set G := { A | Matrix.det (A.val : M) = 1 } in
   (∀ g h : G, h ∈ SL → g * h * g⁻¹ ∈ SL) ∧
   ∃ (φ : G →* Units ℝ),
     Function.Surjective (φ : G → Units ℝ) ∧
     (∀ g : G, (g ∈ SL) ↔ (φ g = (1 : Units ℝ)))) := by sorry
