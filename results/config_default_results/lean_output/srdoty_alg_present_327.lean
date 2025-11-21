import Mathlib

namespace srdoty_alg_present_327

open FreeGroup

/-- The free group on two generators, with generators `a` and `b`. -/
def F : Type := FreeGroup (Fin 2)

def a : F := FreeGroup.of (0 : Fin 2)
def b : F := FreeGroup.of (1 : Fin 2)

/-- The relators a^2, b^2, (a*b)^2 as a set in the free group. -/
def rels : Set F := {a ^ 2, b ^ 2, (a * b) ^ 2}

/-- The normal closure of the relators in the free group. -/
def N : Subgroup F := Subgroup.normalClosure (rels : Set F)

/--
Universal property form of the presentation: for any group H and elements u v : H
satisfying u^2 = v^2 and (u * v)^2 = u^2, there exists a group homomorphism
from the free group F sending `a ↦ u` and `b ↦ v`, and whose kernel contains the
normal closure N of the relators. This encodes the presentation ⟨a,b | a^2 = b^2 = (ab)^2⟩.
-/
theorem srdoty_alg_present_327 (H : Type*) [Group H] (u v : H)
  (hu1 : u ^ 2 = v ^ 2) (hu2 : (u * v) ^ 2 = u ^ 2) :
  ∃ (f : F →* H), f a = u ∧ f b = v ∧ N ≤ f.ker :=
by sorry

end srdoty_alg_present_327
