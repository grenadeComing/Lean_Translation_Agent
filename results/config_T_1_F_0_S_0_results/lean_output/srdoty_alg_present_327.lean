import Mathlib

/-!
Statement: The quaternion group Q = {±1, ±i, ±j, ±k} (with i^2 = j^2 = k^2 = -1 and
multiplication i*j = k, j*k = i, k*i = j and negatives accordingly) is isomorphic to the
group presented by generators a,b with relations a^2 = b^2 = (ab)^2.

We express this by identifying the presented group as the quotient of the free group on two
generators by the normal closure of the three relators a^2, b^2, (ab)^2, and assert an
isomorphism with the quaternion units.
-/

open FreeGroup

/-- Generators a and b of the free group on two generators (indexed by Fin 2). -/
def a : FreeGroup (Fin 2) := FreeGroup.of (0 : Fin 2)

def b : FreeGroup (Fin 2) := FreeGroup.of (1 : Fin 2)

/-- The three relators a^2, b^2, (ab)^2. -/
def rels : Set (FreeGroup (Fin 2)) := {a ^ 2, b ^ 2, (a * b) ^ 2}

/-- The group presented by generators a,b with relations a^2 = b^2 = (ab)^2. -/
def presented_group :=
  FreeGroup (Fin 2) ⧸ Subgroup.normalClosure rels

/-- The quaternion group Q = {±1, ±i, ±j, ±k} is isomorphic to the above presented group. -/
theorem quaternion_group_presentation :
  (Units (Quaternion ℝ)) ≃* presented_group := by sorry
