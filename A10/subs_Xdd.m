function Xdd = subs_Xdd(k,l_0,b,x,y,z,q0,q1,q2,q3,x_d,y_d,z_d,omega_x,omega_y,omega_z)
%SUBS_XDD
%    XDD = SUBS_XDD(K,L_0,B,X,Y,Z,Q0,Q1,Q2,Q3,X_D,Y_D,Z_D,OMEGA_X,OMEGA_Y,OMEGA_Z)

%    This function was generated by the Symbolic Math Toolbox version 8.1.
%    26-Jun-2018 10:53:14

t3 = q0.^2;
t4 = q1.^2;
t5 = q2.^2;
t6 = q3.^2;
t9 = q0.*q2.*(1.0./5.0);
t10 = q0.*q3.*(9.9e1./5.0e1);
t11 = q1.*q2.*(9.9e1./5.0e1);
t12 = q1.*q3.*(1.0./5.0);
t13 = t3.*(1.0./1.0e2);
t14 = t4.*(1.0./1.0e2);
t15 = t5.*(1.0./1.0e2);
t16 = t6.*(1.0./1.0e2);
t2 = -t9-t10+t11+t12+t13+t14-t15-t16+x;
t18 = q0.*q1.*(1.0./5.0);
t19 = q0.*q3.*(1.0./5.0e1);
t20 = q1.*q2.*(1.0./5.0e1);
t21 = q2.*q3.*(1.0./5.0);
t22 = t3.*(9.9e1./1.0e2);
t23 = t4.*(9.9e1./1.0e2);
t24 = t5.*(9.9e1./1.0e2);
t25 = t6.*(9.9e1./1.0e2);
t7 = -t18-t19+t20+t21+t22-t23+t24-t25+y-9.0;
t27 = q0.*q1.*(9.9e1./5.0e1);
t28 = q0.*q2.*(1.0./5.0e1);
t29 = q1.*q3.*(1.0./5.0e1);
t30 = q2.*q3.*(9.9e1./5.0e1);
t31 = t3.*(1.0./1.0e1);
t32 = t4.*(1.0./1.0e1);
t33 = t5.*(1.0./1.0e1);
t34 = t6.*(1.0./1.0e1);
t8 = -t27-t28+t29+t30+t31-t32-t33+t34+z-2.5e1;
t17 = t2.^2;
t26 = t7.^2;
t35 = t8.^2;
t36 = t17+t26+t35;
t37 = 1.0./sqrt(t36);
t38 = conj(q0);
t39 = conj(q2);
t40 = conj(q1);
t41 = conj(q3);
t45 = q0.*q3.*(1.01e2./5.0e1);
t46 = q1.*q2.*(1.01e2./5.0e1);
t42 = -t9+t12+t13+t14-t15-t16+t45-t46+x;
t48 = t3.*(1.01e2./1.0e2);
t49 = t4.*(1.01e2./1.0e2);
t50 = t5.*(1.01e2./1.0e2);
t51 = t6.*(1.01e2./1.0e2);
t43 = -t18-t19+t20+t21-t48+t49-t50+t51+y+9.0;
t53 = q0.*q1.*(1.01e2./5.0e1);
t54 = q2.*q3.*(1.01e2./5.0e1);
t44 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t47 = t42.^2;
t52 = t43.^2;
t55 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t56 = x.*2.0;
t57 = q1.*q3.*(2.0./5.0);
t58 = t3.*(1.0./5.0e1);
t59 = t4.*(1.0./5.0e1);
t60 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t61 = y.*2.0;
t62 = q1.*q2.*(1.0./2.5e1);
t63 = q2.*q3.*(2.0./5.0);
t64 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t65 = z.*2.0;
t66 = q1.*q3.*(1.0./2.5e1);
t67 = t3.*(1.0./5.0);
t68 = t4.*(1.0./5.0);
t69 = t5.*(1.0./5.0);
t70 = t6.*(1.0./5.0);
t71 = conj(x);
t72 = t71.*2.0;
t73 = t40.*t41.*(2.0./5.0);
t74 = t38.^2;
t75 = t74.*(1.0./5.0e1);
t76 = t40.^2;
t77 = t76.*(1.0./5.0e1);
t78 = t39.^2;
t79 = t41.^2;
t80 = sqrt(t36);
t81 = conj(t80);
t82 = 1.0./t81;
t83 = t39.*t40.*(9.9e1./2.5e1);
t87 = t38.*t39.*(2.0./5.0);
t89 = t78.*(1.0./5.0e1);
t90 = t79.*(1.0./5.0e1);
t84 = t72+t73+t75+t77+t83-t87-t89-t90-t38.*t41.*(9.9e1./2.5e1);
t85 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t86 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t88 = t38.*t41.*(1.01e2./2.5e1);
t91 = q1.*q2.*(9.9e1./2.5e1);
t106 = q0.*q2.*(2.0./5.0);
t108 = t5.*(1.0./5.0e1);
t109 = t6.*(1.0./5.0e1);
t139 = q0.*q3.*(9.9e1./2.5e1);
t92 = t56+t57+t58+t59+t91-t106-t108-t109-t139;
t93 = b.*t37.*t92.*x_d.*(1.0./2.0);
t94 = t3.*(9.9e1./5.0e1);
t95 = t4.*(9.9e1./5.0e1);
t96 = t5.*(9.9e1./5.0e1);
t97 = t6.*(9.9e1./5.0e1);
t111 = q0.*q1.*(2.0./5.0);
t112 = q0.*q3.*(1.0./2.5e1);
t98 = t61+t62+t63+t94-t95+t96-t97-t111-t112-1.8e1;
t99 = b.*t37.*t98.*y_d.*(1.0./2.0);
t100 = q2.*q3.*(9.9e1./2.5e1);
t117 = q0.*q2.*(1.0./2.5e1);
t140 = q0.*q1.*(9.9e1./2.5e1);
t101 = t65+t66+t67-t68-t69+t70+t100-t117-t140-5.0e1;
t102 = b.*t37.*t101.*z_d.*(1.0./2.0);
t103 = t93+t99+t102;
t104 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t105 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t107 = q0.*q3.*(1.01e2./2.5e1);
t110 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t113 = t4.*(1.01e2./5.0e1);
t114 = t6.*(1.01e2./5.0e1);
t115 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t116 = q0.*q1.*(1.01e2./2.5e1);
t118 = conj(y);
t119 = t118.*2.0;
t120 = t39.*t40.*(1.0./2.5e1);
t121 = t39.*t41.*(2.0./5.0);
t122 = x_d.^2;
t123 = y_d.^2;
t124 = z_d.^2;
t125 = t122+t123+t124;
t126 = sqrt(t125);
t127 = l_0-t80;
t128 = t74.*(9.9e1./5.0e1);
t129 = t76.*(9.9e1./5.0e1);
t130 = t78.*(9.9e1./5.0e1);
t131 = t79.*(9.9e1./5.0e1);
t135 = t38.*t40.*(2.0./5.0);
t136 = t38.*t41.*(1.0./2.5e1);
t132 = t119+t120+t121+t128-t129+t130-t131-t135-t136-1.8e1;
t133 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t134 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t137 = t76.*(1.01e2./5.0e1);
t138 = t79.*(1.01e2./5.0e1);
t141 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t142 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t162 = q1.*q2.*(1.01e2./2.5e1);
t143 = t56+t57+t58+t59-t106+t107-t108-t109-t162;
t144 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t164 = t3.*(1.01e2./5.0e1);
t165 = t5.*(1.01e2./5.0e1);
t145 = t61+t62+t63-t111-t112+t113+t114-t164-t165+1.8e1;
t146 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t167 = q2.*q3.*(1.01e2./2.5e1);
t147 = t65+t66+t67-t68-t69+t70+t116-t117-t167-5.0e1;
t148 = conj(z);
t149 = t148.*2.0;
t150 = t40.*t41.*(1.0./2.5e1);
t151 = t74.*(1.0./5.0);
t152 = t76.*(1.0./5.0);
t153 = t78.*(1.0./5.0);
t154 = t79.*(1.0./5.0);
t155 = t39.*t41.*(9.9e1./2.5e1);
t160 = t38.*t39.*(1.0./2.5e1);
t156 = t149+t150+t151-t152-t153+t154+t155-t160-t38.*t40.*(9.9e1./2.5e1)-5.0e1;
t157 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t158 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t159 = t38.*t40.*(1.01e2./2.5e1);
t161 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t163 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t166 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t168 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t169 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t170 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t171 = t74-t76+t78-t79;
t172 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t173 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t174 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t175 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t176 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t177 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t178 = t74-t76-t78+t79;
t179 = t37.*t92.*t103.*(1.0./2.0);
t216 = k.*t37.*t92.*t127.*(1.0./2.0);
t180 = t179-t216;
t181 = t38.*t39.*2.0;
t231 = t40.*t41.*2.0;
t182 = t181-t231;
t183 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t184 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t185 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t186 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t187 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t188 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t189 = t38.*t41.*2.0;
t239 = t39.*t40.*2.0;
t190 = t189-t239;
t191 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t192 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t193 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t194 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t195 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t196 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t197 = t37.*t98.*t103.*(1.0./2.0);
t238 = k.*t37.*t98.*t127.*(1.0./2.0);
t198 = t197-t238;
t199 = t38.*t40.*2.0;
t207 = t39.*t41.*2.0;
t200 = t199-t207;
t201 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t202 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t203 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t204 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t205 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t206 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t208 = t37.*t101.*t103.*(1.0./2.0);
t224 = k.*t37.*t101.*t127.*(1.0./2.0);
t209 = t208-t224;
t210 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t211 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t212 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t213 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t214 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t215 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t217 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t218 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t219 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t220 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t221 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t222 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t223 = t74+t76-t78-t79;
t225 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t226 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t227 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t228 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t229 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t230 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t232 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t233 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t234 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t235 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t236 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t237 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t240 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t241 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t242 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t243 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t244 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t245 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t246 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t247 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t248 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t249 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t250 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t251 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t252 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t253 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t254 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t255 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t256 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t257 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t258 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t259 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t260 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t261 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t262 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t263 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t264 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t265 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t266 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t267 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t268 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t269 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t270 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t271 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t272 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t273 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t274 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t275 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t276 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t277 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t278 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t279 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t280 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t281 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t282 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t283 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t284 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t285 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t286 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t287 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t288 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t289 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t290 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t291 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t292 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
t293 = t28-t29-t31+t32+t33-t34-t53+t54-z+2.5e1;
Xdd = [x_d;y_d;z_d;omega_x.*q1.*(-1.0./2.0)-omega_y.*q2.*(1.0./2.0)-omega_z.*q3.*(1.0./2.0);omega_x.*q0.*(1.0./2.0)-omega_y.*q3.*(1.0./2.0)+omega_z.*q2.*(1.0./2.0);omega_y.*q0.*(1.0./2.0)+omega_x.*q3.*(1.0./2.0)-omega_z.*q1.*(1.0./2.0);omega_x.*q2.*(-1.0./2.0)+omega_y.*q1.*(1.0./2.0)+omega_z.*q0.*(1.0./2.0);((b.*x_d.*1.0./sqrt(t47+t52+t55.^2).*(t5.*(-1.0./5.0e1)-t6.*(1.0./5.0e1)+t56+t57+t58+t59+t107-q0.*q2.*(2.0./5.0)-q1.*q2.*(1.01e2./2.5e1)).*(1.0./2.0)+b.*y_d.*1.0./sqrt(t47+t52+t60.^2).*(t3.*(-1.01e2./5.0e1)-t5.*(1.01e2./5.0e1)+t61+t62+t63+t113+t114-q0.*q1.*(2.0./5.0)-q0.*q3.*(1.0./2.5e1)+1.8e1).*(1.0./2.0)+b.*z_d.*1.0./sqrt(t47+t52+t64.^2).*(t65+t66+t67-t68-t69+t70+t116-q0.*q2.*(1.0./2.5e1)-q2.*q3.*(1.01e2./2.5e1)-5.0e1).*(1.0./2.0)).*(t72+t73+t75+t77-t78.*(1.0./5.0e1)-t79.*(1.0./5.0e1)+t88-t38.*t39.*(2.0./5.0)-t39.*t40.*(1.01e2./2.5e1)).*(-1.0./8.4e2))./conj(sqrt(t47+t52+t44.^2))-t126.*x_d.*pi.*7.44047619047619e-4-t82.*t84.*t103.*(1.0./8.4e2)+(k.*(l_0-sqrt(t47+t52+t86.^2)).*(t72+t73+t75+t77-t87+t88-t89-t90-t39.*t40.*(1.01e2./2.5e1)).*(1.0./8.4e2))./conj(sqrt(t47+t52+t85.^2))+k.*t82.*t84.*t127.*(1.0./8.4e2);((b.*t143.*x_d.*1.0./sqrt(t47+t52+t105.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t110.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t115.^2).*(1.0./2.0)).*(t74.*(-1.01e2./5.0e1)-t78.*(1.01e2./5.0e1)+t119+t120+t121+t137+t138-t38.*t40.*(2.0./5.0)-t38.*t41.*(1.0./2.5e1)+1.8e1).*(-1.0./8.4e2))./conj(sqrt(t47+t52+t104.^2))-t126.*y_d.*pi.*7.44047619047619e-4-t82.*t103.*t132.*(1.0./8.4e2)+k.*t82.*t127.*t132.*(1.0./8.4e2)+(k.*(l_0-sqrt(t47+t52+t134.^2)).*(t74.*(-1.01e2./5.0e1)-t78.*(1.01e2./5.0e1)+t119+t120+t121-t135-t136+t137+t138+1.8e1).*(1.0./8.4e2))./conj(sqrt(t47+t52+t133.^2));((b.*t143.*x_d.*1.0./sqrt(t47+t52+t142.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t144.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t146.^2).*(1.0./2.0)).*(t149+t150+t151-t152-t153+t154+t159-t38.*t39.*(1.0./2.5e1)-t39.*t41.*(1.01e2./2.5e1)-5.0e1).*(-1.0./8.4e2))./conj(sqrt(t47+t52+t141.^2))-t126.*z_d.*pi.*7.44047619047619e-4-t82.*t103.*t156.*(1.0./8.4e2)+(k.*(l_0-sqrt(t47+t52+t158.^2)).*(t149+t150+t151-t152-t153+t154+t159-t160-t39.*t41.*(1.01e2./2.5e1)-5.0e1).*(1.0./8.4e2))./conj(sqrt(t47+t52+t157.^2))+k.*t82.*t127.*t156.*(1.0./8.4e2)-9.81e2./1.0e2;omega_y.*omega_z.*(-2.0./1.7e1)-t180.*t182.*5.823529411764706e-3-t171.*t198.*5.882352941176471e-4+t180.*t190.*5.882352941176471e-4+t178.*t209.*5.823529411764706e-3-t198.*t200.*5.823529411764706e-3+t200.*t209.*5.882352941176471e-4-t171.*(t145.*1.0./sqrt(t47+t52+t168.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t161.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t163.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t166.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t145.*(l_0-sqrt(t47+t52+t169.^2)).*1.0./sqrt(t47+t52+t170.^2).*(1.0./2.0)).*5.882352941176471e-4-t178.*(t147.*1.0./sqrt(t47+t52+t175.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t172.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t173.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t174.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t147.*(l_0-sqrt(t47+t52+t176.^2)).*1.0./sqrt(t47+t52+t177.^2).*(1.0./2.0)).*5.941176470588235e-3+t182.*(t143.*1.0./sqrt(t47+t52+t186.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t183.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t184.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t185.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t143.*(l_0-sqrt(t47+t52+t187.^2)).*1.0./sqrt(t47+t52+t188.^2).*(1.0./2.0)).*5.941176470588235e-3+t190.*(t143.*1.0./sqrt(t47+t52+t194.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t191.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t192.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t193.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t143.*(l_0-sqrt(t47+t52+t195.^2)).*1.0./sqrt(t47+t52+t196.^2).*(1.0./2.0)).*5.882352941176471e-4+t200.*(t145.*1.0./sqrt(t47+t52+t204.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t201.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t202.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t203.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t145.*(l_0-sqrt(t47+t52+t205.^2)).*1.0./sqrt(t47+t52+t206.^2).*(1.0./2.0)).*5.941176470588235e-3+t200.*(t147.*1.0./sqrt(t47+t52+t213.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t210.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t211.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t212.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t147.*(l_0-sqrt(t47+t52+t214.^2)).*1.0./sqrt(t47+t52+t215.^2).*(1.0./2.0)).*5.882352941176471e-4;omega_x.*omega_z.*(-1.0./4.0)+t180.*t182.*8.333333333333333e-5-t178.*t209.*8.333333333333333e-5-t190.*t198.*8.333333333333333e-4-t182.*t209.*8.333333333333333e-4+t198.*t200.*8.333333333333333e-5+t180.*t223.*8.333333333333333e-4+t223.*(t143.*1.0./sqrt(t47+t52+t220.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t217.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t218.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t219.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t143.*(l_0-sqrt(t47+t52+t221.^2)).*1.0./sqrt(t47+t52+t222.^2).*(1.0./2.0)).*8.333333333333333e-4-t178.*(t147.*1.0./sqrt(t47+t52+t228.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t225.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t226.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t227.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t147.*(l_0-sqrt(t47+t52+t229.^2)).*1.0./sqrt(t47+t52+t230.^2).*(1.0./2.0)).*8.333333333333333e-5+t182.*(t143.*1.0./sqrt(t47+t52+t235.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t232.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t233.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t234.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t143.*(l_0-sqrt(t47+t52+t236.^2)).*1.0./sqrt(t47+t52+t237.^2).*(1.0./2.0)).*8.333333333333333e-5+t200.*(t145.*1.0./sqrt(t47+t52+t243.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t240.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t241.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t242.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t145.*(l_0-sqrt(t47+t52+t244.^2)).*1.0./sqrt(t47+t52+t245.^2).*(1.0./2.0)).*8.333333333333333e-5-t190.*(t145.*1.0./sqrt(t47+t52+t249.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t246.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t247.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t248.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t145.*(l_0-sqrt(t47+t52+t250.^2)).*1.0./sqrt(t47+t52+t251.^2).*(1.0./2.0)).*8.333333333333333e-4-t182.*(t147.*1.0./sqrt(t47+t52+t255.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t252.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t253.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t254.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t147.*(l_0-sqrt(t47+t52+t256.^2)).*1.0./sqrt(t47+t52+t257.^2).*(1.0./2.0)).*8.333333333333333e-4;omega_x.*omega_y.*(5.0./1.4e1)+t171.*t198.*7.142857142857143e-5-t180.*t190.*7.142857142857143e-5+t190.*t198.*7.071428571428571e-3+t182.*t209.*7.071428571428571e-3-t180.*t223.*7.071428571428571e-3-t200.*t209.*7.142857142857143e-5+t171.*(t145.*1.0./sqrt(t47+t52+t267.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t264.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t265.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t266.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t145.*(l_0-sqrt(t47+t52+t268.^2)).*1.0./sqrt(t47+t52+t269.^2).*(1.0./2.0)).*7.142857142857143e-5+t223.*(t143.*1.0./sqrt(t47+t52+t261.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t258.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t259.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t260.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t143.*(l_0-sqrt(t47+t52+t262.^2)).*1.0./sqrt(t47+t52+t263.^2).*(1.0./2.0)).*7.214285714285714e-3-t190.*(t143.*1.0./sqrt(t47+t52+t273.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t270.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t271.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t272.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t143.*(l_0-sqrt(t47+t52+t274.^2)).*1.0./sqrt(t47+t52+t275.^2).*(1.0./2.0)).*7.142857142857143e-5-t190.*(t145.*1.0./sqrt(t47+t52+t279.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t276.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t277.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t278.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t145.*(l_0-sqrt(t47+t52+t280.^2)).*1.0./sqrt(t47+t52+t281.^2).*(1.0./2.0)).*7.214285714285714e-3-t200.*(t147.*1.0./sqrt(t47+t52+t285.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t282.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t283.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t284.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t147.*(l_0-sqrt(t47+t52+t286.^2)).*1.0./sqrt(t47+t52+t287.^2).*(1.0./2.0)).*7.142857142857143e-5-t182.*(t147.*1.0./sqrt(t47+t52+t291.^2).*(b.*t143.*x_d.*1.0./sqrt(t47+t52+t288.^2).*(1.0./2.0)+b.*t145.*y_d.*1.0./sqrt(t47+t52+t289.^2).*(1.0./2.0)+b.*t147.*z_d.*1.0./sqrt(t47+t52+t290.^2).*(1.0./2.0)).*(1.0./2.0)-k.*t147.*(l_0-sqrt(t47+t52+t292.^2)).*1.0./sqrt(t47+t52+t293.^2).*(1.0./2.0)).*7.214285714285714e-3];
