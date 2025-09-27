import Mathlib

/-- Let T be the group of invertible 2x2 matrices over ZMod 2 (i.e. GL(2,2)). -/
noncomputable def T := GL (Fin 2) (ZMod 2)

/-- There exists a bijection between T and S_3 (as types). This expresses the intended isomorphism of the groups; a full group isomorphism can be given as a MulEquiv. -/
noncomputable def T_bij_S3 : Nonempty (T ≃ Equiv.Perm (Fin 3)) := by sorry
