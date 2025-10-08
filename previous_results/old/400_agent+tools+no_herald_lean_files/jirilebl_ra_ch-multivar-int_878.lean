import Mathlib

variable {n : Nat}
variable (R S T : Set (Fin n -> Real)) (f : (Fin n -> Real) -> Real)

constant RiemannIntegrableOn : ((Fin n -> Real) -> Real) -> Set (Fin n -> Real) -> Prop
constant RiemannIntegral : ((Fin n -> Real) -> Real) -> Set (Fin n -> Real) -> Real
constant Volume : Set (Fin n -> Real) -> Real

theorem union_integral_of_zero_intersection (hR : S ∪ T = R)
  (hV : Volume (S ∩ T) = 0)
  (h1 : RiemannIntegrableOn f S)
  (h2 : RiemannIntegrableOn f T) :
  RiemannIntegrableOn f R ∧ RiemannIntegral f R = RiemannIntegral f S + RiemannIntegral f T := by
  sorry
