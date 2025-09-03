import Mathlib

/-- If there is a surjective group homomorphism f : G →* H and G is solvable,
then H is solvable. This implies in particular that any quotient of a solvable
group is solvable (take f to be the canonical projection). -/
theorem Dummit_Foote_exercise_3_4_5b {G H : Type _} [Group G] [Group H]
  (f : G →* H) (hf : Function.Surjective (f : G → H)) (hG : IsSolvable G) :
  IsSolvable H := by sorry
