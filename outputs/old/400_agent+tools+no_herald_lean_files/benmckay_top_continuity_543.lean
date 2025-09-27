import Mathlib

noncomputable section

open Real
open Classical

/-- Real Euclidean space of dimension n as functions Fin n → ℝ, and ℝ^{n+1} as ℝ × (Fin n → ℝ). -/
def E (n : ℕ) := Fin n → ℝ
def F (n : ℕ) := ℝ × E n

/-- Euclidean 'norm' defined from the sum of squares (noncomputable because of sqrt). -/
def eucl_norm {n : ℕ} (x : E n) : ℝ :=
  Real.sqrt (Finset.univ.sum fun i : Fin n => (x i) ^ 2)

/-- Euclidean norm on ℝ × (Fin n → ℝ). -/
def eucl_norm_F {n : ℕ} (z : F n) : ℝ :=
  Real.sqrt (z.1 ^ 2 + Finset.univ.sum fun i : Fin n => (z.2 i) ^ 2)

/-- Closed unit ball X in E and its boundary A; unit sphere Y in F. -/
def X {n : ℕ} : Set (E n) := { x | eucl_norm (x : E n) ≤ 1 }

def A {n : ℕ} : Set (E n) := { x | eucl_norm (x : E n) = 1 }

def Y {n : ℕ} : Set (F n) := { y | eucl_norm_F (y : F n) = 1 }

/-- The map f : X -> Y as in the statement. -/
noncomputable def f {n : ℕ} (x : E n) : F n :=
  let r := eucl_norm (x : E n)
  haveI : Decidable (r = 0) := Classical.dec (r = 0)
  if h : r = 0 then (1, fun _ => 0)
  else (Real.cos (π * r), fun i => Real.sin (π * r) * (r⁻¹ * x i))

/-- f is injective on the interior X \ A (statement only). -/
theorem f_injective_on_interior {n : ℕ} {x y : E n} (hx : x ∈ X \ A) (hy : y ∈ X \ A)
  (h : f (x : E n) = f (y : E n)) : (x : E n) = (y : E n) := by sorry

/-- f maps every point of the boundary A to the single point (-1,0) in Y (statement only). -/
theorem f_maps_A_to_neg_one {n : ℕ} (a : E n) (ha : a ∈ A) : f (a : E n) = ((-1 : ℝ), fun _ => 0) := by sorry

end noncomputable section
