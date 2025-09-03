import Mathlib

/-- If there is a surjective group homomorphism f : G →* H and G is solvable,
then H is solvable. This implies in particular that any quotient of a solvable
group is solvable (apply to the canonical projection). -/
theorem IsSolvable.of_surjective {G H : Type*} [Group G] [Group H]
  (f : MonoidHom G H) (hf : Function.Surjective f) :
  IsSolvable G → IsSolvable H := by sorry
